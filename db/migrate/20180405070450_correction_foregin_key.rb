class CorrectionForeginKey < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :category_id
    add_column :categories, :post_id ,:integer
  end
end
