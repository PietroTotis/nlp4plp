import argparse

import os
import numpy as np
import torch
from sklearn.metrics import accuracy_score, mean_absolute_error

from corpus_util import Nlp4plpCorpus, Nlp4plpEncoder, Nlp4plpRegressionEncoder
from net_take import LSTMClassifier

def print_correct(test_corp, y_pred, bin_edges):
    print("Correctly predicted discrete classes:")
    for inst, pred in zip(test_corp.insts, y_pred):
        if inst.ans == pred:
            print(f"bin: {tuple(bin_edges[pred:pred+2])}")
            print(f"id: {inst.id}")
            print(f"{' '.join(inst.txt)}\n")


def main():
    arg_parser = argparse.ArgumentParser(description="parser for End-to-End Memory Networks")
    arg_parser.add_argument("--batch-size", type=int, default=32, help="batch size for training")
    arg_parser.add_argument("--cuda", type=int, default=1, help="train on GPU, default: 0")
    arg_parser.add_argument("--data-dir", type=str, default="/mnt/01D503E0ADE91930/Users/pietr/Desktop/PhD/nlp4plp/experiments/NLP/classify_strategy",
                            help="path to folder from where data is loaded. Subfolder should be train/dev/test")
    arg_parser.add_argument("--dropout", type=float, default=0.0)
    arg_parser.add_argument("--embed-size", type=int, default=50, help="embedding dimension")
    arg_parser.add_argument("--epochs", type=int, default=10, help="number of training epochs, default: 100")
    arg_parser.add_argument("--hidden-dim", type=int, default=30, help="")
    # arg_parser.add_argument("--load-model-path", type=str, help="File path for the model.")
    arg_parser.add_argument("--lr", type=float, default=0.001, help="learning rate, default: 0.01")
    # arg_parser.add_argument("--max-vocab-size", type=int, help="maximum number of words to keep, the rest is mapped to _UNK_", default=50000)
    arg_parser.add_argument("--n-layers", type=int, default=1, help="number of layers for the RNN")
    arg_parser.add_argument("--n-runs", type=int, default=5, help="number of runs to average over the results")
    arg_parser.add_argument("--pretrained-emb-path", type=str,
                            help="path to the txt file with word embeddings")
    arg_parser.add_argument("--print-correct")
    arg_parser.add_argument("--save-model", action="store_true")
    # arg_parser.add_argument("--test", type=int, default=1)
    # arg_parser.add_argument("--train", type=int, default=1)
    args = arg_parser.parse_args()

    labels = "take"
    train_corp = Nlp4plpCorpus(os.path.join(args.data_dir,"train"), labels)
    label_size = len({inst.ans for inst in train_corp.insts})
    dev_corp = Nlp4plpCorpus(os.path.join(args.data_dir,"dev"), labels)
    test_corp = Nlp4plpCorpus(os.path.join(args.data_dir,"test"), labels)

    test_score_runs = []
    for n in range(args.n_runs):
        # initialize vocab
        corpus_encoder = Nlp4plpEncoder.from_corpus(train_corp, dev_corp)
        net_params = {'n_layers': args.n_layers,
                      'hidden_dim': args.hidden_dim,
                      'vocab_size': corpus_encoder.vocab.size,
                      'padding_idx': corpus_encoder.vocab.pad,
                      'embedding_dim': args.embed_size,
                      'dropout': args.dropout,
                      'label_size': label_size,
                      'batch_size': args.batch_size,
                      'word_idx': corpus_encoder.vocab.word2idx,
                      'pretrained_emb_path': args.pretrained_emb_path
                      }
        classifier = LSTMClassifier(**net_params)
        eval_score = accuracy_score

        optimizer = torch.optim.Adam(classifier.parameters(), lr=args.lr)

        classifier.train_model(train_corp, dev_corp, corpus_encoder, args.epochs, optimizer)

        # load model
        classifier = LSTMClassifier.load(f_model='lstm_classifier.tar')

        # get predictions
        y_pred, y_true = classifier.predict(test_corp, corpus_encoder)

        # compute scoring metrics
        test_acc = eval_score(y_true=y_true, y_pred=y_pred)
        if args.print_correct is not None:
            print_correct(test_corp, y_pred, test_corp.fitted_discretizer.bin_edges_[0])
        print('TEST SCORE: %.3f' % test_acc)
        test_score_runs.append(test_acc)
    print('AVG TEST SCORE over %d runs: %.3f' % (args.n_runs, np.mean(test_score_runs)))


if __name__ == '__main__':
    main()
