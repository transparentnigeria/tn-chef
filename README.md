Transparent nigeria deployment scripts
=======

Prepare servers
-------

1. Install Ubuntu
2. Login to server
3. Run bootstrap scripts

For web server

`curl https://raw.github.com/kkdoo/chef-repo/master/knife/bootstrap-web.sh | bash`

For database server

`curl https://raw.github.com/kkdoo/chef-repo/master/knife/bootstrap-db.sh | bash`

Deploy application
-------

To setup & start application

`bundle exec cap deploy:setup deploy:cold`
