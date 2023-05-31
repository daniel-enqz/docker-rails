require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'should validate presence of first_name' do
      should validate_presence_of(:first_name)
    end

    it 'should validate presence of last_name' do
      should validate_presence_of(:last_name)
    end
  end
end
