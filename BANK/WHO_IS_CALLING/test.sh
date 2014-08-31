clear
clear2(){
echo testing the call to clear
}
source /tmp/library.cfg
use commander
commander ./evaluate_caller.sh 
echo -----
commander source ./evaluate_caller.sh 
