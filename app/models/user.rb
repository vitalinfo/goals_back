class User < ApplicationRecord
  has_many :goals, inverse_of: :user, dependent: :destroy
  validates :first_name, :last_name, presence: true
end
