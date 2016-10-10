class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :donation_name
      t.text :donation_desc1
      t.text :donation_desc2
      t.integer :quantity          
      t.text :image
      t.timestamps null: false
    end
  end
end
