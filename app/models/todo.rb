class Todo < ApplicationRecord
	belongs_to :user
	validates :title, presence: true
	validates :notes, presence: true
	validates :user_id, presence: true
end
