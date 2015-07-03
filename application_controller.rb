require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class MyApp < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post '/final' do
    catcard= Card.new(params)
    @url_hash=catcard.url_hash
    erb :final
  end
end