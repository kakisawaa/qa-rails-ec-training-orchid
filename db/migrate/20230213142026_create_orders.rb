class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.timestamp :order_date
      t.string :order_number, limit: 16
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
