# os-perf


# Prerequisite
# Redhat&CentOS
# setup to collect process information
# install sysstat
[root@cent78-1 os-perf]# yum install -y sysstat
# start sysstat daemon
[root@cent78-1 os-perf]# systemstl enable sysstat --now


# clone the repo

[root@cent78-1 os-perf]# git clone https://github.com/ktzyl/os-perf.git
[root@cent78-1 os-perf]# cd os-perf

# configure the script
[root@cent78-1 os-perf]# chmod +x pidstat.sh
[root@cent78-1 os-perf]# ./pidstat.sh

# put the job to background by ctrl+z

# bring the job to foreground
# fg ./pidstat.sh

# check generated logs
[root@cent78-1 os-perf]# ll /tmp/pidperf/
# stop the job by ctrl+c
