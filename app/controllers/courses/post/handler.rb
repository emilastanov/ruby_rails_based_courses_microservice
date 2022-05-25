
module Courses::Post::Handler
  include Courses::Middlewares::Params
  include Middlewares::CreateObject
  def post
    render json: make_create_response(Course, get_course_params)
  end
end
