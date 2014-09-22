clear
trap - ERR

set_env(){
cmd_trap_err='trap "echo trapping err" ERR'
commander $cmd_trap_err
}


func1(){
some_err
}
steps(){
set_env
func1
}

steps
