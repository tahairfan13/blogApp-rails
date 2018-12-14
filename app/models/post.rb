class Post < ApplicationRecord
  #associations
  belongs_to :user
  belongs_to :category
  has_many :comments , dependent: :destroy
  has_many :likes , dependent: :destroy
  #validations
  validates :title, presence: true ,length: {maximum: 35}
  validates :description ,presence: true ,length: {minimum: 100, maximum: 10000} #remember to change the minimum later

  scope :filter_category, -> (category_id) {where(category_id: category_id.to_i) if category_id.present?} #Scope not used just for future references
end
