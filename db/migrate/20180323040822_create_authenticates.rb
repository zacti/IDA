class CreateAuthenticates < ActiveRecord::Migration[5.1]
  def change
    create_table :authenticates do |t|
      t.string :name
      t.string :author
      t.text :content
      t.datetime :published_at

      t.timestamps
    end
  end
end
