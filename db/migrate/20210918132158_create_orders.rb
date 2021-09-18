class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :currency
      t.string :customer_name
      t.decimal :amount, precision: 5, scale: 2
      t.references :order_category, foreign_key: true

      t.timestamps
    end
  end
end
