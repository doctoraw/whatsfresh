class Country < ActiveRecord::Base
  has_many :states
  has_many :seasons
  has_many :foods, through: :seasons

  validates_presence_of :name
  validates_uniqueness_of :name
end
