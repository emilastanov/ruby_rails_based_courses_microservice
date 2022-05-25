# module Courses::Post::Document
#
# end
def reviews_post_document
  path "/reviews" do
    post "Create review." do
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
      response "201", "Review created" do
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