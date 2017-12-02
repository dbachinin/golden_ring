class CreateFotos < ActiveRecord::Migration[5.1]
  def change
    create_table :fotos do |t|
      t.string :foto
      t.string :description
      t.string :item

      t.timestamps
    end
  end
end
