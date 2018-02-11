class Story < ApplicationRecord
  has_many :pages
  belongs_to :user
  has_many :media, through: :pages
end
