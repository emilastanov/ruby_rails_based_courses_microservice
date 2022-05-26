
module Tasks::Get::Handler
  include Middlewares::GetListOrObject
  def get
    render json: make_query_response(Task, params, search_by: [:course_id])
  end
end
