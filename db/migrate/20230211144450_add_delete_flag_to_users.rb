class AddDeleteFlagToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :delete_flag, :boolean
  end
end
