class UserSessionsController < Sinatra::Base
    set :default_content_type, 'application/json'

    get "/user_sessions" do
      user_sessions = UserSession.all
      user_sessions.to_json
    end

 

    get "/user_sessions_notes/:id" do
      current_user = UserSession.find(params[:id])
      current_session_notes = current_user.user_notes
      current_session_notes.to_json
    end


    post "/user_sessions" do
      new_user_sessions =UserSession.create(params)
      new_user_sessions.to_json
    end
  
end