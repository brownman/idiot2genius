clear
print color 33 'to OR operator is working only on bash flag: +e'
test1(){
set +e
cmd_or='eval echo "error on: $LINENO $BASH_LINENO"'
blaaaa || $cmd_or
}
test2(){
set -e
cmd_or='eval echo "error on: $LINENO $BASH_LINENO"'
blaaaa || $cmd_or
}



steps(){
test1 
indicator
test2
indicator
 
}

( steps )
exit 0
