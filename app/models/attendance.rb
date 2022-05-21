class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event, class_name: "Event"
end
