class Activity < ApplicationRecord
    ACTIVITY_NAMES = ["Running", "Skiing", "Hiking", "Cycling", "Boxing", "Skipping", "Swimming", "Brisk Walking", "Dancing", "Interval Running"]
    validates :activity_name, :activity_date, :activity_duration, presence: true
end
