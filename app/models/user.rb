class User < ApplicationRecord
	has_many :lessons, :dependent => :destroy
end
