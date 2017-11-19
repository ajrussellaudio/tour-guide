class AddTourToPoints < ActiveRecord::Migration[5.0]
  def change
    add_reference :points, :tour, foreign_key: true
  end
end
