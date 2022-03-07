class User < ActiveRecord::Base
    has_many :notes
    has_many :study_sessions, through: :notes
end