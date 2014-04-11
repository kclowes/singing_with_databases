require 'sinatra/base'
require 'sequel'

class App < Sinatra::Application
  tasks_table = DB[:tasks]
  TASKS_ARRAY = tasks_table.to_a

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