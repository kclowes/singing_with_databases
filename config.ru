require 'sequel'

db_url = ENV['DATABASE_URL'] || 'postgres://gschool_user:password@localhost/tasks_db_test'
DB = Sequel.connect(db_url)

require './app'
run App
