set :user, "danbooru"
set :rails_env, "production"
set :delayed_job_workers, 8
append :linked_files, ".env.production"

server "nope.nope", :roles => %w(web app cron worker), :primary => true

set :newrelic_appname, "Nopebooru"
after "deploy:finished", "newrelic:notice_deployment"
