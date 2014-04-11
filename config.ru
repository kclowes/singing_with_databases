require 'sequel'

db_url = ENV['DATABASE_URL']
DB = Sequel.connect(db_url)

require './app'
run App
