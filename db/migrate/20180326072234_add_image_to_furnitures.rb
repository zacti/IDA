class AddImageToFurnitures < ActiveRecord::Migration[5.1]
  def change
    add_column :furnitures, :image, :string
  end
end
