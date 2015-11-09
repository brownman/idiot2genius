sudo apt-get install mailutils
sudo apt-get install sendmail
file=$(mktemp)
echo hi > $file
mail=$( which mail )
echo "Subject: test" | /usr/lib/sendmail -v $someone1@gmail.com Example

 cat $file  | $mail -s 'My subject'  $someone1@gmail.com 
