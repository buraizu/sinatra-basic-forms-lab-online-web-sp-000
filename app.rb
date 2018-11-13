require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @puppy = Puppy.new
    @breed = @puppy.breed
    @name = @puppy.name
    @age = @puppy.age
  end

  post '/display_puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
  end

end
