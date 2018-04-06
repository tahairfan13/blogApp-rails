class User < ApplicationRecord
  #gem inclusions
  has_secure_password

  #associatiojns
  has_many :posts, dependent: :destroy
  has_many :comments , dependent: :destroy
  has_many :likes , dependent: :destroy

  #validations
  validates :name, presence: true ,length: {maximum: 15}
  validates :username, presence: true ,length: {maximum: 20},uniqueness: { case_sensitive: false }
  validates :password ,presence: true ,length: {minimum: 5}, allow_nil: true
end
