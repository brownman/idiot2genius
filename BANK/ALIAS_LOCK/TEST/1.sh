clear

#reset alias
#eval 'unalias set' #is the same
unalias set &>/dev/null

lock(){
echo 'working locker' 
}
cmd_alias="alias set=lock"


test1(){
( $cmd_alias; set 1; )
}
test2(){
( $cmd_alias; eval 'set 1'; )
}

type test1 | grep -v function
test1
echo
type test2 | grep -v function
test2
