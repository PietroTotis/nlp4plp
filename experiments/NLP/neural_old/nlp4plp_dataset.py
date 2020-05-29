import argparse
import os
import sys
from collections import Counter
from shutil import copyfile

import numpy as np

from corpus_util import Nlp4plpCorpus


def create_splits(data_dir, data_dir_out, label_type):
    train_out_dir = data_dir_out + "/train/"
    dev_out_dir = data_dir_out + "/dev/"
    test_out_dir = data_dir_out + "/test/"

    if not os.path.exists(train_out_dir):
        os.makedirs(train_out_dir)
    elif os.listdir(train_out_dir):
        sys.exit("dir not empty")
    if not os.path.exists(dev_out_dir):
        os.makedirs(dev_out_dir)
    elif os.listdir(dev_out_dir):
        sys.exit("dir not empty")
    if not os.path.exists(test_out_dir):
        os.makedirs(test_out_dir)
    elif os.listdir(test_out_dir):
        sys.exit("dir not empty")

    corp = Nlp4plpCorpus(data_dir, label_type)
    corp_len = len(corp.fs)

    np.random.seed(1234)
    np.random.shuffle(corp.fs)
    test_len = round(.1 * corp_len)
    val_len = test_len
    test = corp.fs[:test_len]
    dev = corp.fs[test_len:(test_len + val_len)]
    train = corp.fs[(test_len + val_len):]

    for f in test:
        copyfile(f, test_out_dir + os.path.basename(f))
    for f in dev:
        copyfile(f, dev_out_dir + os.path.basename(f))
    for f in train:
        copyfile(f, train_out_dir + os.path.basename(f))

    print(f"Split {corp_len} files into {data_dir_out}")


def get_ans_dist(data):
    """
    :param data: a list of Nlp4plpInst objects
    """
    dist = Counter([d.ans for d in data])

    return dist


def get_vocab_dist(data):
    """
    :param data: a list of Nlp4plpInst objects
    """
    dist = Counter([w for d in data for w in d.txt])

    return dist


def get_avg_sen_len(data):
    return np.mean([len(d.txt) for d in data])


if __name__ == "__main__":
    arg_parser = argparse.ArgumentParser(description="")
    arg_parser.add_argument("--data-dir", type=str,
                            default="/mnt/01D503E0ADE91930/Users/pietr/Desktop/PhD/nlp4plp_old/code/solver/examples",
                            help="path to folder from where data is loaded")
    args = arg_parser.parse_args()

    labels = "take"
    d = Nlp4plpCorpus(args.data_dir, labels)
    insts = d.insts

    ans_dist = get_ans_dist(insts)
    print(f"Most common answers: {ans_dist.most_common(10)}")

    vocab_dist = get_vocab_dist(insts)
    print(f"Most common vocab items: {vocab_dist.most_common(10)}")
    print(f"Vocab size: {len(vocab_dist)}")
    print(f"Dataset (problem/text) size: {sum(vocab_dist.values())}")
    avg_sen_len = get_avg_sen_len(insts)
    print(f"Avg sen len: {avg_sen_len}")
    create_splits(args.data_dir, "/mnt/01D503E0ADE91930/Users/pietr/Desktop/PhD/nlp4plp/experiments/NLP/classify_strategy", "take")
