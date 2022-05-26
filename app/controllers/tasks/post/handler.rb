
module Tasks::Post::Handler
  include Tasks::Middlewares::Params
  include Middlewares::CreateObject
  def post
    render json: make_create_response(Task, get_task_params, child_of: {model: Course, field: :course_id})
  end
end
