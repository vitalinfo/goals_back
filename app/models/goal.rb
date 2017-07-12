class Goal < ApplicationRecord
  belongs_to :user, inverse_of: :goals

  validates :title, :user, :score, presence: true
  validates :score, numericality: { greater_than_or_equal_to: 0, less_than: 10 }
end
