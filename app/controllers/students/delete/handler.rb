
module Students::Delete::Handler
  include Middlewares::DeleteObject
  def delete
    render json: make_delete_response(Student, params)
  end
end
