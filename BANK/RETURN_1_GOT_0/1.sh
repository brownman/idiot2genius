clear
func1(){
  return 1 
}
steps(){
  echo we expect result code of 1 and we get 1
  $(  func1  )
  echo res: $?
  echo we expect result code of 1 and we get 1
  str=$( func1 )
  echo res: $?

  echo the return value is not the result of the \$\( ..\) parentesis but of the decleration: local
  local str=$( func1 )
  echo res: $?

}
steps
