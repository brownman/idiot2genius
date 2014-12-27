#!/usr/bin/env bash

#use: bash -E
#inspect: persistant trap ERR within subshells

trap_err(){
echo $FUNCNAME 
echo $(caller)
}
trap trap_err ERR


update_file(){
cat > $file <<START
env 
trap
trap | grep ERR
START
}

set_env(){
file=/tmp/2.sh
update_file
}

test1(){
bash -E $file
}

steps(){
set_env
test1
}

steps
