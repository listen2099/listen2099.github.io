set password 777879
set p1 push
set p2 origin
set p3 master

git add .
git commit -m "post"

spawn git $p1 $p2 $p3
expect "*passphrase*"
send "$password\r"
interact
expect eof

bundle exec jekyll s

