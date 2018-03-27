class RemoveColumnFromFurnitures < ActiveRecord::Migration[5.1]
  def change
    remove_column :furnitures, :type, :string
    add_column :furnitures, :category, :string
  end
end
