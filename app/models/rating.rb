class Rating < ApplicationRecord

  belongs_to :event, :dependent => :destroy
  attr_accessor :event
  validates_presence_of :event
  validates_inclusion_of :value, :in => 1..5

end
