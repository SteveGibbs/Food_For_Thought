# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  tax        :decimal(, )      default(0.1)
#  shipping   :decimal(, )      default(20.0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cart < ActiveRecord::Base
  has_many :items, -> { order 'created_at asc'}
  has_many :products, through: :items

end
