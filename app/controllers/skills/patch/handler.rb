
module Skills::Patch::Handler
  include Skills::Middlewares::Params
  include Middlewares::UpdateObject
  def patch
    render json: make_update_response(Skill, get_skill_params)
  end
end
