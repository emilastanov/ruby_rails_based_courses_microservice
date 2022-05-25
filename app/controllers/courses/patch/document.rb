# module Courses::Patch::Document
#
# end

def courses_patch_document
  path "/courses" do
    patch "Update data of course." do
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
      response "201", "Course updated" do
        let(:course) { {
          id: 1,
          title: "Course",
          description: "About course",
          logotype: "http://example.com/logo.png"
        } }
        run_test!
      end
    end
  end
end