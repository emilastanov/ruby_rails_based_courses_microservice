
module Skills::Post::Handler
  include Skills::Middlewares::Params
  include Middlewares::CreateObject
  def post
    render json: make_create_response(Skill, get_skill_params, child_of: {model: Course, field: :course_id})
  end
end
