class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :recipe
      t.string :ingredients
      t.string :time

      t.timestamps
    end
  end
end
