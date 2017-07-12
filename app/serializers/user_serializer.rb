class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :average_score, :goals

  def goals
    return [] unless instance_options[:include_goals]
    ActiveModel::Serializer::CollectionSerializer.new(object.goals, serializer: GoalSerializer)
  end

  def average_score
    object.goals.average(:score)
  end
end
