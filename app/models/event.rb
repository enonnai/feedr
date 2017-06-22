class Event < ApplicationRecord
  belongs_to :user

  validates :title, :info, :date_time, :end_date_time, :nr_guests, presence: true

end
