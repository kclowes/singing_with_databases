require 'sinatra/base'

class App < Sinatra::Application

  TASKS = []

  get '/' do
    erb :index
  end

  get '/tasks' do
    erb :tasks, :locals => {:added_task => params[:task_field]}
  end

  post '/' do
    TASKS << params[:task_field]
    redirect '/'

  end
end