
module Courses::Delete::Handler
  include Middlewares::DeleteObject
  def delete
    render json: make_delete_response(Course, params)
  end
end
