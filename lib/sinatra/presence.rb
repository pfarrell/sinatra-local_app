require 'sinatra/base'

module Sinatra
  module Presence

    def self.registered(app) 
      app.set :local_authority, '127.0.0.1:9292' # http://en.wikipedia.org/wiki/URI_scheme 

      app.get '/local' do
        new_url = request.url.gsub("#{request.host_with_port}", "#{settings.local_authority}")
          .gsub("/local", "") 
        redirect to(new_url)
      end 
    end 

  end 
end
