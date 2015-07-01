class Food < ActiveRecord::Base
  validate_uniqueness_of :name
end
