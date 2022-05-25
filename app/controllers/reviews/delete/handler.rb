
module Reviews::Delete::Handler
  include Middlewares::DeleteObject
  def delete
    render json: make_delete_response(Review, params)
  end
end
