class ChangeOrders < ActiveRecord::Migration[5.1]
  def up
    change_table :orders do |t|
      t.column :subtotal, :float
      t.change :total, :float
      t.column :tax, :float
      t.column :shipping, :float
    end
  end
 
  def down
    change_table :products do |t|
      t.remove :details, :string
      t.remove :date, :datetime
      t.remove :status, :string
      t.remove :product_id, :integer
      t.remove_index :index_orders_on_product_id, :index
    end
  end
 
end