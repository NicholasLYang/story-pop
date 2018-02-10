class Post < ApplicationRecord
  has_many :media
  belongs_to :story
end
