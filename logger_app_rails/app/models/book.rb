class Book < ActiveRecord::Base
	scope :desc,-> { order("id DESC") }

	validates :title, presence: true
	validates :description, presence: true
end
