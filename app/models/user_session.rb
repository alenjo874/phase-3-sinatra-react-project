class UserSession < ActiveRecord::Base
    belongs_to :user
    belongs_to :study_session

    def user_notes 
        self.study_session.notes
    end

end