class Profile < ApplicationRecord
	belongs_to :user
	validates_uniqueness_of :username
	validates :username, presence: true
	validates :user_id, presence: true

	has_many :todos, dependent: :destroy
	
	resourcify
end
