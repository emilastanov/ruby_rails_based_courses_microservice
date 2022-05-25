
module Courses::Patch::Handler
  include Courses::Middlewares::Params
  include Middlewares::UpdateObject
  def patch
    render json: make_update_response(Course, get_course_params)
  end
end
