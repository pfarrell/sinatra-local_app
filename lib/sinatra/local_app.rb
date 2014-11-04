require 'sinatra/base'

module Sinatra
  module LocalApp

    def self.registered(app) 
      app.set :local_ip, '127.0.0.1'
      app.set :local_port, '9292'
    end
  end
end
