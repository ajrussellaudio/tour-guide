class AddStreetToPoints < ActiveRecord::Migration[5.1]
  def change
    add_column :points, :street, :string
  end
end
