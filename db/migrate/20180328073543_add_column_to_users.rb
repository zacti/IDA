class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :remember_me, :string
    add_column :users, :string, :string
  end
end
