require 'sequel'

db_url = ENV['DATABASE_URL'] || ENV['HEROKU_POSTGRESQL_AQUA_URL']
DB = Sequel.connect(db_url)

require './app'
run App
