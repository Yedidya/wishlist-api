class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :item
      t.string :vendor
      t.string :category
      t.string :price, precision: 6, scale: 2
      t.string :ship_address

      t.timestamps
    end
  end
end
