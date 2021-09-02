# setup to collect process information
## Prerequisite
### Redhat&CentOS
#### install sysstat
    [root@cent78-1 os-perf]# yum install -y sysstat
    [root@cent78-1 os-perf]# systemstl enable sysstat --now

### Ubuntu 
#### install sysstat
    root@ubu1804-2:~# apt-get install sysstat
    root@ubu1804-2:~# systemctl enable sysstat --now

## Setup pidstat to collect process CPU and memory consumption

    git clone https://github.com/ktzyl/os-perf.git 
    cd os-perf
    chmod +x pidstat.sh
    ./pidstat.sh

    // put the job to background by ctrl+z
    // bring the job to foreground
    fg ./pidstat.sh
    // check generated logs
    ll /tmp/pidperf/
    // stop the job by ctrl+c
