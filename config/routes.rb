def make_crud_routes(controller, cd_only: false)
  methods = if cd_only
              %w(post delete)
            else
              %w(get post patch delete)
            end

  methods.each do |method|
    send(method, controller, to: "#{controller}##{method}")
  end
end

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/'
  mount Rswag::Api::Engine => '/'

  make_crud_routes :courses
  make_crud_routes :students
  make_crud_routes :reviews
end
