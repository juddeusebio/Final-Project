class AddCategoryToSneakers < ActiveRecord::Migration[5.1]
  def change
    add_reference :sneakers, :category, foreign_key: true
  end
end
