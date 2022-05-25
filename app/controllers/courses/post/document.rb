# module Courses::Post::Document
#
# end
def courses_post_document
  path "/courses" do
    post "Create achievement." do
      tags "Courses"
      consumes "application/json"
      parameter name: :course, in: :body, schema: {
        type: :object,
        properties: {
          id: {type: :integer},
          title: { type: :string },
          description: { type: :string },
          estimated_time: {type: :integer},
          difficulty: {type: :integer},
          state: {type: :string}
        },
      }
      response "201", "Achievement created" do
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