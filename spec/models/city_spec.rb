require 'rails_helper'

RSpec.describe City, type: :model do
  it { is_expected.to have_many :adventures }
end
