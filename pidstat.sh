#! /bin/bash
dir="/tmp/pidperf"
if [ -d $dir ]
then
    read -p "$dir already exists. Do you want to remove it? [y/n]" -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]
    then
      exit 1
    else
      rm -rf $dir
      mkdir $dir
    fi
else
  mkdir $dir
fi
cd $dir
while true;
do
    pidstat -u 15 > pidcpu_$(date "+%Y-%m-%d-%H-%M").log & disown $!
    export PIDCPUJOB=$(echo $!)
    pidstat -r 15 > pidmem_$(date "+%Y-%m-%d-%H-%M").log & disown $!
    export PIDMEMJOB=$(echo $!)
    sleep 180
    kill $PIDCPUJOB
    kill $PIDMEMJOB
done