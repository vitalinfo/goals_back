class Api::V1::GoalsController < ApplicationController
  def create
    goal = Goal.new(goal_params)
    if goal.save
      render_json_success(goal)
    else
      render_json_error(goal.errors)
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :score, :user_id)
  end
end
