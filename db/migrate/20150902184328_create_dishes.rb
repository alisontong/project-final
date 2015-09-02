class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image_url

      t.timestamps null: false
    end
  end
end
