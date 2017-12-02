class CreateIndexpages < ActiveRecord::Migration[5.1]
  def change
    create_table :indexpages do |t|
      t.text :description
      t.string :foto

      t.timestamps
    end
  end
end
