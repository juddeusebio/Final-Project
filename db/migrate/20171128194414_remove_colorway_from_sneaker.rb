class RemoveColorwayFromSneaker < ActiveRecord::Migration[5.1]
  def change
    remove_column :sneakers, :colorway, :varchar
  end
end
