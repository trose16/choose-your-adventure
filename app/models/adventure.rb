class Adventure < ApplicationRecord
  belongs_to :city
  has_one :game
end
