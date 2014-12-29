
#info: send func1 args and use: runner=arg[0], shift , args_new=arg[else]

set_args(){
#https://wiki.ubuntu.com/DashAsBinSh
#commander "assert left_bigger $# 1"
local arg0=$1
local opts="${@:1}"
print color 34 "arg0: $arg0"
print color 34 "opts: $opts"
}

set_args aa bb cc dd
