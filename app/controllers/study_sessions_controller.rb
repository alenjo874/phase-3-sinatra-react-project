class StudySessionsController < Sinatra::Base
  
    get "/study_sessions" do
        study_sessions = StudySession.all
        study_sessions.to_json
    end
  
  end