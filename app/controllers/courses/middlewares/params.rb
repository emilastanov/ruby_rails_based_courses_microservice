
module Courses::Middlewares::Params
  private
  def get_course_params
    params.require(:course).permit(
      :id,
      :title,
      :description,
      :estimated_time,
      :difficulty,
      :state
    )
  end
end
