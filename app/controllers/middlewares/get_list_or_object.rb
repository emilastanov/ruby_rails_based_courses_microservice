
module Middlewares::GetListOrObject
  def make_query_response(model, params, links: [], search_by: [])
    limit = params[:limit] || 100
    offset = params[:offset] || 0
    object_id = params[:id]

    if search_by
      search_by.each do |param|
        if params.include? param

          list = model.where(["#{param} = ?", params[param]]).limit(limit).offset(offset)
          count = model.where(["#{param} = ?", params[param]]).count

          return {
            status: :ok,
            data: list,
            limit: limit.to_i,
            offset: offset.to_i,
            count: count
          }
        end
      end
    end

    if object_id
      object = model.find(object_id)
      object = object.attributes.merge links.map { |link| [link, object.send(link)]}.to_h

      {
        status: :ok,
        data: object,
      }
    else
      list = model.all.limit(limit).offset(offset)
      count = model.count

      {
        status: :ok,
        data: list,
        limit: limit.to_i,
        offset: offset.to_i,
        count: count
      }
    end
  end

end