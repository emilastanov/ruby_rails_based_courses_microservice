
module Reviews::Get::Handler
  include Middlewares::GetListOrObject
  def get
    render json: make_query_response(Review, params, search_by: [:course_id])
  end
end
