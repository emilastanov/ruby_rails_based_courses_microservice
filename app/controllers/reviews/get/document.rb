# module Courses::Get::Document
#
# end
def reviews_get_document
  path "/reviews" do
    get "Get review or list of reviews." do
      tags "Reviews"
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