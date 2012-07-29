Transparent nigeria deployment scripts
=======

Prepare servers
-------

1. Install Ubuntu
2. Login to server
3. Run bootstrap scripts

For web server

`curl https://raw.github.com/gist/3201851/07f7aa41f050f08e1678ca91be6d88492a7f963d/bootstrap-web.sh|bash`

For database server

`curl https://raw.github.com/gist/3201846/2990b030983c239a845b8f6250dec98e0c1da139/bootstrap-db.sh|bash`

Deploy application
-------

To setup & start application at first time

`bundle exec cap staging deploy:setup deploy:update deploy:db_create deploy:start`

For next time deploying

`bundle exec cap staging deploy`

To deploy and run pending migrations

`bundle exec cap staging deploy:migrations`
