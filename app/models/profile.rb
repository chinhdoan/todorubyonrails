class Profile < ApplicationRecord
	belongs_to :user
	validates :username, presence: true
	validates :user_id, presence: true

	has_many :todos, dependent: :destroy
end
