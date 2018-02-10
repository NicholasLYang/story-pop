class Story < ApplicationRecord
  has_many :posts
  belongs_to :user
  has_many :media, through: :posts
end
