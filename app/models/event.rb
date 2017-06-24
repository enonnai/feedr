class Event < ApplicationRecord
  belongs_to :user

  acts_as_votable

  validates :title, :info, :date_time, :end_date_time, :nr_guests, presence: true
  validate :end_date_is_after_start_date

  private

  def end_date_is_after_start_date
    return errors.add(:end_date_time, "End date/time cannot be before the start date/time") if end_date_time < date_time
  end
end
