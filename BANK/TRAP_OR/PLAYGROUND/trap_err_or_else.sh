set +e 
exec 1> >(tee log.txt)

trap_err(){
echo 1st
}

func(){
 echo 2nd 
}

set_env(){

 cmd_err='some_error'
 file_list=./list.txt
 }
 
 cases(){

 trap trap_err ERR
   while read line;do
     #clear
     echo "____ $line _________"
     sleep 2
     eval "$line" 2>/tmp/err
     sleep 2
     echo
     echo with eval
     $line 2>/dev/null
     sleep 4
   done <$file_list
}

steps(){
clear
set_env
cases
}

steps
