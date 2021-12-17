class CreateVideogames < ActiveRecord::Migration[6.1]
  def change
    create_table :videogames do |t|
      t.integer :rank
      t.string :name
      t.string :platform
      t.integer :year
      t.string :genre
      t.string :publisher
      t.decimal :global_sales

      t.timestamps
    end
  end
end
