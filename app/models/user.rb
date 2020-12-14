class User < ApplicationRecord
  has_secure_password
  has_many :appointments

  validates :email, presence: true
  validates :username, presence: true
  validates :email, uniqueness: true
end
