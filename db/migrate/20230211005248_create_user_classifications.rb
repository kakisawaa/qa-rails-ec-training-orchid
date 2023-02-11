class CreateUserClassifications < ActiveRecord::Migration[6.1]
  def change
    create_table :user_classifications do |t|
      t.string :user_classification_name

      t.timestamps
    end
  end
end
