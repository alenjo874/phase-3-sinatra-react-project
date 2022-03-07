class StudySession < ActiveRecord::Base
    has_many :notes
    # has_many :users, through: :notes
    has_many :user_sessions 
    has_many :users, through: :user_sessions 
end