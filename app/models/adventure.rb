class Adventure < ApplicationRecord
  belongs_to :city
  belongs_to :game
end
