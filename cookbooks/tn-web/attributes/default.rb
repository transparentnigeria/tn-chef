default['app']['path'] = '/home/ubuntu/rails/current'

default['rvm']['user_installs'] = [
  { 'user' => 'ubuntu',
    'rubies' => ['1.9.3'],
    'rvmrc'         => {
      'rvm_project_rvmrc'             => 1,
      'rvm_gemset_create_on_use_flag' => 1,
      'rvm_pretty_print_flag'         => 1
    },
    'rvm_gem_options' => '--no-ri --no-rdoc'
  }
]
