# Provide tasks to load and delete sample user data.
require 'active_record'
require 'active_record/fixtures'

desc "Install Insoshi"
task :install => :environment do |t|
  Rake::Task["db:migrate"].invoke
  Rake::Task["db:test:prepare"].invoke
  Preference.create!
end
