class Page < ApplicationRecord
  has_many :media
  belongs_to :story
end
