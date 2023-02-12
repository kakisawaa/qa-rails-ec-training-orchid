class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :last_name, limit: 16
      t.string :first_name, limit: 16
      t.string :zipcode, limit: 16
      t.string :prefecture, limit: 16
      t.string :municipality, limit: 16
      t.string :address, limit: 32
      t.string :apartments, limit: 32
      t.string :email, limit: 128
      t.string :phone_number, limit: 16
      t.string :company_name, limit: 128
      t.string :password_digest, limit: 64
      t.boolean :delete_flag, default: false, null: false
      t.references :user_classification, foreign_key: true

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
