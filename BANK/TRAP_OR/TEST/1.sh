clear
run_err(){
source 1.cfg 2>/dev/null
}
run_err || ( echo fixing1; )

trap_err(){
echo fixing2;
}
trap trap_err ERR
run_err

