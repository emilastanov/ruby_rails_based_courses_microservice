
module Courses::Get::Handler
  include Middlewares::GetListOrObject
  def get
    render json: make_query_response(Course, params, links: [:skills], search_by_link: [model: :skills, field: :skill_id])
  end
end
