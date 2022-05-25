
module Reviews::Patch::Handler
  include Reviews::Middlewares::Params
  include Middlewares::UpdateObject
  def patch
    render json: make_update_response(Review, get_review_params)
  end
end
