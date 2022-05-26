# module Courses::Post::Document
#
# end
def tasks_post_document
  path "/tasks" do
    post "Create task." do
      tags "Tasks"
      consumes "application/json"
      parameter name: :task, in: :body, schema: {
        type: :object,
        properties: {
          id: {type: :integer},
          data: {type: :json},
          type: {type: :string},
          course_id: {type: :integer}
        },
      }
      response "201", "Task created" do
        let(:company) { {
          id: 1,
          title: "Achievement",
          description: "About achievement",
          logotype: "http://example.com/logo.png"
        } }
        run_test!
      end
    end
  end
end