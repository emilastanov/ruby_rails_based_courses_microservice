
module Students::Patch::Handler
  include Students::Middlewares::Params
  include Middlewares::UpdateObject
  def patch
    render json: make_update_response(Student, get_student_params)
  end
end
