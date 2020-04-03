require 'rubygems'
require 'sinatra'
require "sinatra/reloader" if development?
require 'sqlite3'

get '/' do
  erb 'Can you handle a secret?'
end

get '/new' do
  erb :new
end