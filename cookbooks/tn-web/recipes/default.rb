include_recipe 'nginx'
include_recipe 'rvm::user_install'
include_recipe 'rvm::gem_package'
include_recipe "mysql::client"

template '/etc/nginx/sites-enabled/default' do
  source 'nginx.conf.erb'
  mode 0440
  owner 'root'
  group 'root'
  variables({
    :app_path => node[:app][:path]
  })
end

rvm_ruby 'ruby-1.9.3' do
  action :install
  user 'ubuntu'
end
