
dir_self=$( cd `dirname $0`; pwd )


steps(){
local dir0=$dir_self/BANK
list=$( ls -1d $dir0 )

local file
local dir

while read line;do
dir=$dir0/$line
test -d $dir  &&  { ls $dir; }
done
}

steps
