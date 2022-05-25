
module Middlewares::UpdateObject
  def make_update_response(model, params)
    object = model.find params.delete(:id)
    object.update params

    {
      status: :ok,
      data: object
    }
  end
end

