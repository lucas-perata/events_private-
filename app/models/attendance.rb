class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event, class_name: "Event"
  validates :user, uniqueness: { scope: :event}
end
