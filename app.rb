require 'sinatra'
require "sinatra/reloader" if development?


get '/' do 
  'hello world'
end

get '/secret' do
  'its a secret'
end

get '/me' do
  'hello sweetie'
end

get'/random-cat' do
  @name = ['Amigo','Tiago', 'Abdur'].sample
  erb(:index) 
end

get'/cat-form' do
  erb(:cat_form)
end

post'/named-cat' do
  p params
  @name = params[:name]
  erb(:index) 
end




