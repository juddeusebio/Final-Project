class CreateSneakers < ActiveRecord::Migration[5.1]
  def change
    create_table :sneakers do |t|
      t.string :colorway
      t.decimal :size
      t.string :condition
      t.integer :price
      t.integer :quantity
      t.string :brand
      t.string :model
      t.boolean :for_sale
      t.date :release_date
      t.references :brand

      t.timestamps
    end
  end
end
