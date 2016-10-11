class CreateFoodOrders < ActiveRecord::Migration
  def change
    create_table :food_orders do |t|
      t.integer :user_id
      t.integer :donation_id
      t.datetime :pickup

      t.timestamps null: false
    end
  end
end
