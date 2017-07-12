class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :average_goal

  # has_many :goals

  # def average_goal
  #   object.goals.average(:score)
  # end
end
