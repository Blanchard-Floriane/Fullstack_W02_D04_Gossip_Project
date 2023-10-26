class Gossip < ApplicationRecord
  belongs_to :users
  has_many :tags, through: :inter_tag_gossips
end
