require 'sinatra/base'

module Sinatra
  module LocalApp

    def self.registered(app) 
      app.set :local_ip, '127.0.0.1'
      app.set :local_port, '9292'

      app.get '/local' do
        redirect to(request.url.gsub(request.host_with_port, "#{settings.local_ip}:#{settings.local_port}").gsub('/local',''))
      end
    end

  end
end
