class User < ApplicationRecord
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
  belongs_to :city
  has_many :gossips
  has_many :comments
  has_many :likes
  has_many :tags, through: :gossips
end
