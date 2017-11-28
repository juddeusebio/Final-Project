class AddNicknameToSneaker < ActiveRecord::Migration[5.1]
  def change
    add_column :sneakers, :nickname, :string
  end
end
