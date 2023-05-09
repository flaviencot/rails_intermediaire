class Gossip < ApplicationRecord
  belongs_to :user
  has_many :intertags
  has_many :comments
  has_many :likes, as: :imageable
  has_many :tags, through: :intertags
end
