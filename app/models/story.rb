class Story < ApplicationRecord
  belongs_to :adventure
  has_many :choices
end
