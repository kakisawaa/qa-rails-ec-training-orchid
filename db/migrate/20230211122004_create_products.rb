class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name, :limit => 64
      t.integer :price
      t.text :description, :limit => 256
      t.timestamp :regist_date
      t.boolean :delete_flag, :limit => 1
      t.references :category, foreign_key: true
      t.references :sale_status, foreign_key: true
      t.references :product_status, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
