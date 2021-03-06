class Event < ApplicationRecord
    belongs_to :user
    has_many :attendances, dependent: :destroy
    has_many :attendees, through: :attendances, source: :user, dependent: :destroy
end
