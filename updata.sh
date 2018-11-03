git add .
git commit -m "post"

set password 777879
spawn git push origin master
expect "*passphrase*"
send "$password\r"
interact
expect eof

bundle exec jekyll s

