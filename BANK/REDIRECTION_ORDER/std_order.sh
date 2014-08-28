
echo  print stderr to screen
somerr 2>&1 >/tmp/err

echo print stderr to file
someerr >/tmp/err 2>&1
