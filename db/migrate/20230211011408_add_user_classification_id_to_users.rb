class AddUserClassificationIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :user_classification, foreign_key: true
  end
end
