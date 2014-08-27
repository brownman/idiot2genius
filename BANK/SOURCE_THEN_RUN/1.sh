clear
echo1(){
echo -n 1>&2 [-]
echo $@
}
set +e
echo1 source the .cfg file - it will execute 2.sh
echo1 will 2.sh effect the calling shell env ?
( source 1.cfg )
echo1 answer: no
