require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should be valid with factory attributes' do
    expect(build(:user)).to be_valid
  end
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
end
