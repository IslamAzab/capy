default_run_options[:pty] = true  # Must be set for the password prompt
                                  # from git to work
set :application, "capy"
set :repository,  "git@github.com:IslamAzab/capy.git"

set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :user, "deployer"

set :ssh_options, { :forward_agent => true }
set :user, "root"

set :deploy_to, "/var/www/capy"

# server "application", :app, :web, :db, :primary => true
role :web, "192.168.1.190"                          # Your HTTP server, Apache/etc
role :app, "192.168.1.190"                          # This may be the same as your `Web` server
role :db,  "192.168.1.190", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
