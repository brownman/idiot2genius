#unset clear1
#clear1
#echo $BASH_SOURCE
#echo $0
sleep 3
if [ "$0" = "$BASH_SOURCE" ];then
  echo source me please
  exit
fi
str_caller='eval echo $(caller)'
exec 2> >(tee /tmp/err)

clear1(){
echo "[CALLER]"
$str_caller
}

intro(){
echo is it clear1 ?
echo who tried to clean the screen ?
echo I will make a nice trap here.
}

clear1
echo boom!
