class Sign < ActiveRecord::Base
	validates :sign_source, presence: true
end
