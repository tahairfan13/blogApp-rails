class WrongArgumentsCorrection < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :post_id
    add_column :posts, :user_id ,:integer
  end
end
