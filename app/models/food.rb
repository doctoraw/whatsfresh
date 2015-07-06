class Food < ActiveRecord::Base
  has_many :seasons
  has_many :states, through: :seasons
end