require 'sinatra/base'

class TestApp < Sinatra::Base
  register Sinatra::Presence

  #set :views, File.join(File.dirname(__FILE__), 'views')
  #set :public_folder, File.join(File.dirname(__FILE__), 'public')
  #set :show_exceptions, false

  get '/' do
    puts "Hellocal"
  end

end
