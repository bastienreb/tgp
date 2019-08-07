class Gossip < ApplicationRecord
	has_many :tags
	belongs_to :user
	validates :title, length: {in: 3..14}
	# validates :content 
end
