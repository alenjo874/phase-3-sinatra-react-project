class Note < ActiveRecord::Base
    has_many :users
    has_many :study_sessions, through: :users
end