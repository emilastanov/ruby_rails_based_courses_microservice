
module Reviews::Middlewares::Params
  private
  def get_review_params
    params.require(:review).permit(
      :id,
      :profile,
      :course_id,
      :text,
      :mark_for_theory,
      :mark_for_practice
    )
  end
end
