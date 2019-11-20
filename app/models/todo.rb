class Todo < ApplicationRecord
	belongs_to :user
	belongs_to :profile	
	validates :user_id, presence: true
	validates :profile_id, presence: true
	validates :notes, presence: true
	validates :title, presence: true

	resourcify
end
