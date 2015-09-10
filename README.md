Cloud9 Server - https://group-willycode.c9.io

kill -9 $(lsof -i tcp:3000 -t) # 找出3000 port並砍掉process

Migrations are pending. To resolve this issue, run: bin/rake db:migrate RAILS_ENV=development
1.delete development.sqlite3
2.delete test.sqlite3
3.delete /db/migrate/XXXXXXX_add_name_to_user.rb
4.bundle exec rake db:migrate

Post.all
Post.find(1).delete
