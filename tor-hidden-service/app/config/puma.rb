max_threads_count = ENV.fetch('RAILS_MAX_THREADS', 5)
min_threads_count = ENV.fetch('RAILS_MIN_THREADS', max_threads_count)
threads min_threads_count, max_threads_count
workers ENV.fetch('WEB_CONCURRENCY', 2)

environment ENV.fetch('RAILS_ENV') { 'development' }
worker_timeout 3600 if ENV.fetch('RAILS_ENV', 'development') == 'development'

if ENV['PUMA_SOCK_PATH'].nil?
  port 1190
else
  bind "unix://#{ENV['PUMA_SOCK_PATH']}"
end

pidfile ENV.fetch('PIDFILE') { '/tmp/puma.pid' }

preload_app!
