class AddChefToBars < ActiveRecord::Migration[5.0]
  def change
    add_column :bars, :chef, :string
  end
end
