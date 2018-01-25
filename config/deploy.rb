set :stages, %w(production development)
set :repo_url, 'https://github.com/tovrey/rails-test-app.git'
set :deploy_to, '/home/deploy/app'
server '139.59.130.182', user: 'deploy', roles: %w(web app db), port: 10022
set :migration_role, :db
set :conditionally_migrate, true
set :assets_roles, %i(web app)
set :rails_env, 'production'
set :branch, ENV['branch'] || 'master'
set :linked_files, %w(config/database.yml config/secrets.yml)
set :rails_env, 'production'
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets')
