require 'spec_helper'

describe User do
	subject(:user) { described_class.create(name: "TwitterName") }

	describe 'attributes' do
    it 'should have a name' do
      expect(user.name).to eq("TwitterName")
    end
  end

  describe 'validations' do
    it 'should not be valid without a name' do
      user.name = " "
      expect(user).to_not be_valid
    end
  end

  describe 'associations' do
    it { should respond_to(:challenges) }
  end

end
