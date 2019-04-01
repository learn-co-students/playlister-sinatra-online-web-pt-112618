class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  set :views, Proc.new { File.join(root, "../views/") }
  enable :sessions
  set :session_secret, "my_application_secret"
  register Sinatra::Flash

  get '/' do
    erb :index
  end
end
