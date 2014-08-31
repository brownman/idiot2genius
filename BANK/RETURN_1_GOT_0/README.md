the result code: $?
-----
- local str=$( return 1 );echo $?
- it will print 0 !
