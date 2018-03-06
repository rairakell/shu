environment "production"

bind  "unix:///var/www/yinshu/shared/tmp/sockets/puma.sock"
pidfile "/var/www/yinshu/shared/tmp/pids/puma.pid"
state_path "/var/www/yinshu/shared/tmp/sockets/puma.state"
directory "/var/www/yinshu/current"

workers 2
threads 1,2

daemonize true

activate_control_app 'unix:///var/www/yinshu/shared/tmp/sockets/pumactl.sock'

prune_bundler