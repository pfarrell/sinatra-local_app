require 'spec_helper'

describe Sinatra::LocalApp do
  it "should initialize with :local_ip set to 127.0.0.1" do
    expect(TestApp.local_ip).to eq('127.0.0.1')
  end

  it "should initialize with :local_port set to 9292" do
    expect(TestApp.local_port).to eq('9292')
  end

  it "should respond to '/local'" do
    get '/local'
  end

  it "should redirect requests to '/local'" do
    get '/local'
    expect(last_response).to be_redirect
  end
end
