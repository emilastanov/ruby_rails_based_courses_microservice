
module Tasks::Middlewares::Params
  private
  def get_task_params
    params.require(:task).permit(
      :id,
      :data,
      :course_id,
      :task_type
    )
  end
end
