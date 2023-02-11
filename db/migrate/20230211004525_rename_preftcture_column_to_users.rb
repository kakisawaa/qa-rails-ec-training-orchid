class RenamePreftctureColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :preftcture, :prefecture
  end
end
