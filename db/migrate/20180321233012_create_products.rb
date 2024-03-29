class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product
      t.text :description
      t.string :image_url
      t.decimal :price
      t.string :category
      t.integer :quantity

      t.timestamps
    end
  end
end
