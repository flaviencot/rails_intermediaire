# Correspond à Join Tag et Gossip
class Intertag < ApplicationRecord
  belongs_to :tag
  belongs_to :gossip
end
