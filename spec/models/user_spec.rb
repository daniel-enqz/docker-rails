require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'should validate presence of email' do
      should validate_presence_of(:email)
    end

    it 'should validate presence of password' do
      should validate_presence_of(:password)
    end
  end
end
