class RemoveNameFromFurnitures < ActiveRecord::Migration[5.1]
  def change
    remove_column :furnitures, :name, :string
    remove_column :furnitures, :size, :string
    add_column :furnitures, :item, :string
    add_column :furnitures, :type, :string
  end
end
