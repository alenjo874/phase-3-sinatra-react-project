class UserSessionsController < Sinatra::Base
    set :default_content_type, 'application/json'
    get "/user_sessions" do
      user_sessions = UserSession.all
      user_sessions.to_json
    end
  
end