name 'base'
description 'Base stack for transparent nigeria'
run_list('recipe[build-essential]','recipe[git]')
