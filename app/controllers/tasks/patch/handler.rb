
module Tasks::Patch::Handler
  include Tasks::Middlewares::Params
  include Middlewares::UpdateObject
  def patch
    render json: make_update_response(Task, get_task_params)
  end
end
