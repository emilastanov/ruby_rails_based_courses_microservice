# module Courses::Post::Document
#
# end
def students_post_document
  path "/students" do
    post "Create student." do
      tags "Students"
      consumes "application/json"
      parameter name: :course, in: :body, schema: {
        type: :object,
        properties: {
          id: {type: :integer},
          profile: {type: :integer},
          course_id: {type: :integer},
          pass_percentage: {type: :numeric},
          state: {type: :string}
        },
      }
      response "201", "Student created" do
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