class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :total
      t.string :floatrails
      t.string :g
      t.string :migration
      t.string :create_orders
      t.integer :user_id
      t.integer :product_id
      t.float :total
    end
    add_index :orders, :user_id
    add_index :orders, :product_id
    add_index :orders, :user_id
    add_index :orders, :product_id
  end
end
