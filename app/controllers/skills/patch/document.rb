# module Courses::Patch::Document
#
# end

def skills_patch_document
  path "/skills" do
    patch "Update data of review." do
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
      response "201", "Skill updated" do
        let(:course) { {
          id: 1,
          title: "skill",
          description: "About review",
          logotype: "http://example.com/logo.png"
        } }
        run_test!
      end
    end
  end
end