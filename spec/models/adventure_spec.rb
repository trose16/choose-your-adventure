require 'rails_helper'

RSpec.describe Adventure, type: :model do
  it { is_expected.to belong_to :city }
  it { is_expected.to belong_to :game }
end
