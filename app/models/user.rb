class User < ApplicationRecord
  has_many :gossips
  has_many :likes
  has_many :comments
  #belongs_to :city
  #has_and_belongs_to_many :private_messages
end
