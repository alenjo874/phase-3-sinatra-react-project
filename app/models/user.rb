class User < ActiveRecord::Base
    has_many :notes
    # has_many :study_sessions, through: :notes
    has_many :user_sessions
    has_many :study_sessions, through: :user_sessions
end