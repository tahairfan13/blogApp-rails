class Comment < ApplicationRecord
  #associations
  belongs_to :user
  belongs_to :post
  #validations
  validates :description, presence:true ,length: {minimum:10,maximum:200}
  validates :post_id, presence: true
  validates :user_id, presence: true

end
