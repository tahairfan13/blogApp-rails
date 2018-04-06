class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :username, null: false
      t.integer :post_id, null: false, default: false
      t.string :password_digest
      t.string
      t.timestamps
    end
  end
end
