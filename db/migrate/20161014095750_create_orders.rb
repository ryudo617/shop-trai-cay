class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :model
      t.decimal :total_price
      t.string :status
      t.integer :quantity
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end