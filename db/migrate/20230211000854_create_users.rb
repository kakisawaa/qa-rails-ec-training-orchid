class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name
      t.string :zipcode
      t.string :preftcture
      t.string :municipality
      t.string :address
      t.string :apartments
      t.string :email
      t.string :phone_number
      t.string :company_name

      t.timestamps
    end
  end
end
