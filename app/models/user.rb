class User < ActiveRecord::Base
    belongs_to :note
    belongs_to :study_session
end