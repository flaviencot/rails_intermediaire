class Tag < ApplicationRecord
  has_many :intertags
  has_many :gossips, through: :intertags
  has_many :users, through: :gossips
end
