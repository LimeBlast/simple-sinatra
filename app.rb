require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    'Hello World'
  end

  post '/' do
    'Hello World via post'
  end

  put '/' do
    'Hello world via put'
  end

  delete '/' do
    'Goodbye world'
  end

  get '/hello/:first_name/:last_name' do |first, last|
    "Hello #{first} #{last}"
  end

end