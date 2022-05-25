
module Students::Post::Handler
  include Students::Middlewares::Params
  include Middlewares::CreateObject
  def post
    render json: make_create_response(Student, get_student_params, child_of: {model: Course, field: :course_id})
  end
end
