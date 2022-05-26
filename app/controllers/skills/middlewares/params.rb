
module Skills::Middlewares::Params
  private
  def get_skill_params
    params.require(:skill).permit(
      :id,
      :skill_id,
      :course_id
    )
  end
end
