# module Courses::Patch::Document
#
# end

def students_patch_document
  path "/students" do
    patch "Update data of student." do
      tags "Students"
      consumes "application/json"
      parameter name: :student, in: :body, schema: {
        type: :object,
        properties: {
          id: {type: :integer},
          profile: {type: :integer},
          course_id: {type: :integer},
          pass_percentage: {type: :numeric},
          state: {type: :string}
        },
      }
      response "201", "Student updated" do
        let(:course) { {
          id: 1,
          title: "Student",
          description: "About student",
          logotype: "http://example.com/logo.png"
        } }
        run_test!
      end
    end
  end
end