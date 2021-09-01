# create tmp dir
dir="/tmp/pidperf"
if [ -d $dir ]
then
    echo "Directory already exists. Exiting..."
    exit 1
else
    mkdir $dir
fi
cd $dir

while true;
do 
    pidstat -u 15 > pidcpu_$(date "+%Y-%m-%d-%H-%M").log & disown $!
    export PIDCPUJOB=$(echo $!)
    pidstat -r 15 > pidmem_$(date "+%Y-%m-%d-%H-%M").log & disown $!
    export PIDMEMJOB=$!
    sleep 180
    kill $PIDCPUJOB
    kill $PIDMEMJOB
done $
