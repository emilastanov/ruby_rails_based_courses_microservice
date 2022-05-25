# module Courses::Patch::Document
#
# end

def reviews_patch_document
  path "/reviews" do
    patch "Update data of review." do
      tags "Reviews"
      consumes "application/json"
      parameter name: :review, in: :body, schema: {
        type: :object,
        properties: {
          id: {type: :integer},
          profile: {type: :integer},
          course_id: {type: :integer},
          text: {type: :string},
          mark_of_theory: {type: :string},
          mark_of_practice: {type: :string}
        },
      }
      response "201", "Review updated" do
        let(:course) { {
          id: 1,
          title: "Review",
          description: "About review",
          logotype: "http://example.com/logo.png"
        } }
        run_test!
      end
    end
  end
end