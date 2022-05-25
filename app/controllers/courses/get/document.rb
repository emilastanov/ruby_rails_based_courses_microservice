# module Courses::Get::Document
#
# end
def courses_get_document
  path "/courses" do
    get "Get course or list of courses." do
      tags "Courses"
      consumes "application/json"
      parameter name: :id, in: :query, schema: {
        type: :query,
        properties: {
          id: { type: :integer },
        }
      }
      response "200", "" do
        let(:encounter) { { patient_id: 10, provider_id: 1 } }
        run_test!
      end
    end
  end
end