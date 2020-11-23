class User < ApplicationRecord
  has_secure_password
  has_many :appointments 

  validates_presence_of :email
  validates_presence_of :username
  validates_uniqueness_of :email
end
