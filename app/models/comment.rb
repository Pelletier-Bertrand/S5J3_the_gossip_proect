class Comment < ApplicationRecord
  belongs_to :user, optional: true
  has_many :likes
end
