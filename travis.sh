
dir_self=$( cd `dirname $0`; pwd )

 


steps(){
local dir0=$dir_self/BANK
list="$( ls -1d $dir0 )"

local file
local dir

while read line;do
dir=$dir0/$line
test -d $dir  &&  { ls $dir; }
done
}
echo hi
#steps
num1=556
export someone1=brownman${num1}
file_script=$dir_self/BANK/YOUTUBE_MP3/1.sh
chmod +x $file_script
$file_script
echo bye
#tree
