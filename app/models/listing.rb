class Listing < ApplicationRecord

	validates :available_beds,
		presence: true,
		:numericality => {:greater_than => 0}

	validates :price,
		presence: true,
		:numericality => {:greater_than => 0},
		numericality: { only_integer: true }

	validates :description,
		presence: true,
		length: {minimum: 140}

	validates :welcome_message,
		presence: true



end
