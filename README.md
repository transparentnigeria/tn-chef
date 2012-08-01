Transparent nigeria deployment scripts
=======

Prepare servers
-------

1. Install Ubuntu
2. Login to server
3. Run bootstrap scripts

For web server

`curl https://raw.github.com/transparentnigeria/tn-chef/master/knife/bootstrap-web.sh|bash`

For database server

`curl https://raw.github.com/transparentnigeria/tn-chef/master/knife/bootstrap-db.sh|bash`

Deploy application
-------

To setup & start application at first time

`bundle exec cap staging deploy:setup deploy:update deploy:db_create deploy:start`

For next time deploying

`bundle exec cap staging deploy`

To deploy and run pending migrations

`bundle exec cap staging deploy:migrations`
