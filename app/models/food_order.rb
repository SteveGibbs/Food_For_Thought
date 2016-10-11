class FoodOrder < ActiveRecord::Base

  belongs_to :user
  belongs_to :donation


end
