MICROWAVE_HOME = "/home/vagrant/workspace"

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
include_recipe "postgresql::server"
include_recipe "nodejs"

RUBY_VERSION = "2.2.2"

rbenv_ruby "#{RUBY_VERSION}" do
  ruby_version "#{RUBY_VERSION}"
  global true
end

rbenv_gem "bundler" do
  ruby_version "#{RUBY_VERSION}"
end

execute "bundle_install" do
  command "cd #{MICROWAVE_HOME} && bundle install"
end

execute "create_database" do
  command "cd #{MICROWAVE_HOME} && bundle exec rake db:drop db:create db:migrate db:seed"
end

execute "create_test_database" do
  command "cd #{MICROWAVE_HOME} && RAILS_ENV=test bundle exec rake db:drop db:create db:migrate"
end
