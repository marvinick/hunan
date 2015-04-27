class Veggie < ActiveRecord::Base
  validates_presence_of :name, :price
end
