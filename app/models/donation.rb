class Donation < ActiveRecord::Base

has_many :food_orders
has_many :users, :through => :food_orders

end
