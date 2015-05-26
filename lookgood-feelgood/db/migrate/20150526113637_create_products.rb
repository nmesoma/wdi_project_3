class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :image
      t.text :name
      t.text :description
      t.text :brand
      t.text :category
      t.int :price_retail
      t.stringurl :currency_iso

      t.timestamps null: false
    end
  end
end
