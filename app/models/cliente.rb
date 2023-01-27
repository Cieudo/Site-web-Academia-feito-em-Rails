class Cliente < ApplicationRecord
	validates :idade, presence: true
end
