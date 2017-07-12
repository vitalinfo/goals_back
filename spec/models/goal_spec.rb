require 'rails_helper'

RSpec.describe Goal, type: :model do
  it 'should be valid with factory attributes' do
    expect(build(:goal)).to be_valid
  end
  it { should validate_presence_of :title }
  it { should validate_presence_of :user }
  it { should validate_presence_of :score }
  it { should validate_numericality_of(:score).is_greater_than_or_equal_to(0).is_less_than(10) }
end
