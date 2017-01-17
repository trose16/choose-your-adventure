require 'rails_helper'

RSpec.describe Story, type: :model do
  it { is_expected.to belong_to :adventure }
  it { is_expected.to have_many :choices }
end
