# provide $1=model and $2=conversion_param_*.pl as input
cat $1 | grep Solution | awk -F "##" '{print "% ##"$2}' 
problog get_roots.pl -t 60 -a $1 -a $2 | awk -F "[)][:]" '{print $1")."}' | awk '{ sub(/^[ \t]+/, ""); print }'
