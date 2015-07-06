class State < ActiveRecord::Base
  belongs_to :country
  has_many :seasons
  has_many :foods, through: :seasons
end