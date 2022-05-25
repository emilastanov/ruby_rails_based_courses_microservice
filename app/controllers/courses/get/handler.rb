
module Courses::Get::Handler
  include Middlewares::GetListOrObject
  def get
    render json: make_query_response(Course, params)
  end
end
