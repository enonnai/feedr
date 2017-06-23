class Event < ApplicationRecord
  belongs_to :user

  acts_as_votable

  validates :title, :info, :date_time, :end_date_time, :nr_guests, presence: true

end
