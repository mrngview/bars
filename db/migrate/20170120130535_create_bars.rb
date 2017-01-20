class CreateBars < ActiveRecord::Migration[5.0]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :stars
      t.string :chef

      t.timestamps
    end
  end
end
