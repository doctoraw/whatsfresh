class Food < ActiveRecord::Base
  has_many :seasons
  has_many :states, through: :seasons

  validates_presence_of :name
  validates_uniqueness_of :name
end