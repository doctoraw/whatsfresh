class Country < ActiveRecord::Base
  has_many :states
  has_many :seasons
  has_many :foods, through: :seasons
end