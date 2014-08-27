set -o nounset

#exec 2>$file_err
#blah4
intro_start(){
  echo 'Q1: which function will win to store the error ?'
  echo 'Q2: example: echo ok 2>/tmp/err - will it force creation of /tmp/err ?'
  echo
 echo 'guess1: the parent is winning all: func0 wins - to avoid overriding file  in case of redirecting to the same file'
}

cleanup(){
  rm $file_err1
  rm $file_err0
}

func0(){
  func1 2>$file_err0
}

func1(){
  blah0
  func2 2>$file_err1
}

func2(){
  blah1

}
cat1(){
  echo
  local file=$1
  echo $file
  if [ -s $file ];then
    echo ---
    cat -n $file
    echo
  fi
}
intro_output(){
  cat1 $file_err0
  cat1 $file_err1
}

intro_finish(){
  echo A2: yes, redirection force the creation of a file
}
clear
#file_err=/tmp/errrr
file_err0=/tmp/err0
file_err1=/tmp/err1
cleanup 2>/dev/null
( func0 )
intro_start
intro_output
intro_finish



