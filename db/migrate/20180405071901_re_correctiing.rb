class ReCorrectiing < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :post_id
    add_column :posts, :category_id ,:integer
  end
end
