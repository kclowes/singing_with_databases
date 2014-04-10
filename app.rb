require 'sinatra/base'
require 'sequel'

class App < Sinatra::Application

  db = Sequel.connect('postgres://gschool_user:password@localhost/tasks_db_test')
  tasks_table = db[:tasks]
  ARRAY_OF_TASKS = tasks_table.to_a

  get '/' do
    erb :index
  end

  get '/tasks' do
    erb :tasks
  end

  post '/' do
    tasks_table.insert({:task => params[:task_field]})
    redirect '/'
  end
end