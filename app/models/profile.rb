class Profile < ApplicationRecord
  validates :name, :location, :short_bio, presence: true
  belongs_to :user
end
