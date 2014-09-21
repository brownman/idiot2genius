

fork1(){
  print func
  sleep 1

  echo pid: $$
commander   pstree $$
some_err 2>/dev/null
indicator
}



steps(){
  print func
  echo dive into an error
  sleep 1
  echo pid: $$
fork1 &

#  echo pid forked: $!
commander sleep 4
#indicator


}
test1(){
set +e
steps
indicator
print color 33 V
}
test2(){
set -e 
steps
indicator
print color 33 V

}
print_g gay test1
(test1)
indicator

print_g metal test2
(test2)
indicator
echo BYE
