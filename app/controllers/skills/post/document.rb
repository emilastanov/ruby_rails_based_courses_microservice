# module Courses::Post::Document
#
# end
def skills_post_document
  path "/skills" do
    post "Create skill." do
      tags "Skills"
      consumes "application/json"
      parameter name: :skill, in: :body, schema: {
        type: :object,
        properties: {
          id: {type: :integer},
          skill_id: {type: :integer},
          course_id: {type: :integer}
        },
      }
      response "201", "Skill created" do
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