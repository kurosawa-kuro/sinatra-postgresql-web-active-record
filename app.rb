require 'sinatra'
require 'sinatra/activerecord'
require 'pg'

require './models/todo'

# todoの一覧を表示するページ
get '/todos' do
  @todos = Todo.all
  erb :todos
end
