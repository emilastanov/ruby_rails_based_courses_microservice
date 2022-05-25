
module Students::Middlewares::Params
  private
  def get_student_params
    params.require(:student).permit(
      :id,
      :profile,
      :course_id,
      :pass_percentage,
      :state
    )
  end
end
