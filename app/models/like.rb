class Like < ApplicationRecord

  #associations
  belongs_to :user
  belongs_to :post
  #validations
  validates :post_id, presence: true
  validates :user_id, presence: true

  validates :post, uniqueness: {scope: :user }
end
