class StudySessionsController < Sinatra::Base

    set :default_content_type, 'application/json'
    
    get "/study_sessions" do
        study_sessions = StudySession.all
        study_sessions.to_json
    end

    get "/study_sessions_notes" do
      user_sessions = StudySession.all
      user_sessions.to_json(include: :notes)
    end

    post "/study_sessions" do
        new_study_session = StudySession.create(params)
        new_study_session.to_json
      end
  
      patch "/study_sessions/:id" do
        edit_study_session = StudySession.find(params[:id])
        edit_study_session.update(params)
        edit_study_session.to_json
      end
  
      delete "/study_sessions/:id" do
        delete_study_session = StudySession.find(params[:id])
        delete_study_session.destroy
      end
  
  end