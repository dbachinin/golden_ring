class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.text :description
      t.string :addres
      t.string :phone

      t.timestamps
    end
  end
end
