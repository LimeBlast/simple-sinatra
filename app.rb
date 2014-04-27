require 'sinatra/base'

IMAGES = [
    {title: 'Utopia', url: 'http://placehold.it/350x150/&text=Utopia'},
    {title: 'Alaska', url: 'http://placehold.it/350x150/&text=Alaska'},
    {title: 'The Unknown', url: 'http://placehold.it/350x150/&text=The+Unknown'},
]

class App < Sinatra::Base

  get '/images' do
    @images = IMAGES
    erb :images
  end

  get '/images/:index' do |index|
    index = index.to_i
    @image = IMAGES[index]

    haml :'images/show', layout: true
  end

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

  get '/hello/:first_name/?:last_name?' do |first, last|
    "Hello #{first} #{last}"
  end

end