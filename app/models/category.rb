class Category < ApplicationRecord
  #associations
  has_many :posts
  #validations
  validates :title, presence: true ,length: {maximum: 25}
end
