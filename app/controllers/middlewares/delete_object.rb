
module Middlewares::DeleteObject
  def make_delete_response(model, params)
    object = model.find(params[:id])
    object.destroy

    {
      status: :deleted,
      company: object
    }
  end
end
