class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :post_id,null:false
      t.integer :user_id,null:false
      t.boolean :flag, default: false
      t.timestamps
    end
  end
end
