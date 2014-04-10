require_relative 'app'

run App

database_url = 'postgres://gschool_user:password@localhost/tasks_db_test'

DB = Sequel.connect(database_url)