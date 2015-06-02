class Lead < ActiveRecord::Base
	validates :name, :email, :notes, presence: true
end
