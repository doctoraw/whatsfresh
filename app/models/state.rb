class State < ActiveRecord::Base
  belongs_to :country
  has_many :seasons
  has_many :foods, through: :seasons
  
  validates_presence_of :name, :code
  validates_uniqueness_of :name, :code
  validates :code, length: { is: 2 }
end