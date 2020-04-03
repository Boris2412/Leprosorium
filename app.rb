require 'rubygems'
require 'sinatra'
require "sinatra/reloader" if development?
require 'sqlite3'

def init_db
  @db = SQLite3::Database.new 'leprosorium.db'
	@db.results_as_hash = true 
end

before do
  init_db
end


get '/' do
  erb 'Can you handle a secret?'
end

get '/new' do
  erb :new
end

post '/new' do
  content = params[:content]

  erb "You typed #{content}"
end