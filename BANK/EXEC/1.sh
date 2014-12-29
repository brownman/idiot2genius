#info: [print stderr] to both: screen + file


redirect_err_for_2(){
exec 2> >( tee /tmp/err >&2)
some_err | { cat /tmp/err; }
}


redirect_err_for_2
