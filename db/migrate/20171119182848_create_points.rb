class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.text :info
      t.string :name
      t.string :image_url
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
