sudo apt-get install mailutils
sudo apt-get install sendmail
file=$(mktemp)
echo hi > $file
mail=$( which mail )
eval $( echo "cat $file  | $mail -s 'My subject'  $someone1@gmail.com")
