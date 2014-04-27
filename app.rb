require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    'Hello World'
  end

  post '/' do
    'Hello World via post'
  end

end