require 'sinatra/base'
require 'sequel'

class App < Sinatra::Application

  tasks_table = DB[:tasks]

  get '/' do
    erb :index, locals: {tasks_array: tasks_table.to_a}
  end

  get '/tasks' do
    erb :tasks
  end

  post '/' do
    tasks_table.insert({:task => params[:task_field]})
    redirect '/'
  end
end
