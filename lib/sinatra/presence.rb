require 'sinatra/base'

module Sinatra
  module Presence

    def self.registered(app) 
      app.set :local_authority, '127.0.0.1:9292' # http://en.wikipedia.org/wiki/URI_scheme 

      app.before do
        if(request.cookies["local_url"].nil?)
          new_url = request.url.gsub("#{request.host_with_port}", "#{settings.local_authority}").gsub("/local", "") 
          response.set_cookie(:local_url, value: new_url, expires: Time.now + 600)
        end
      end

      app.get '/local' do
        new_url = request.url.gsub("#{request.host_with_port}", "#{settings.local_authority}").gsub("/local", "") 
        redirect to(new_url)
      end 
    end 

  end 
end
