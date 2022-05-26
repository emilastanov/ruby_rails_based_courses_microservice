
module Tasks::Delete::Handler
  include Middlewares::DeleteObject
  def delete
    render json: make_delete_response(Task, params)
  end
end
