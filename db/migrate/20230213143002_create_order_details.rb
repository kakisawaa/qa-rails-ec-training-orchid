class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.integer :order_quantity
      t.timestamp :shipment_date
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.references :shipment_status, foreign_key: true

      t.timestamps
    end
  end
end
