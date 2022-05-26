# module Courses::Get::Document
#
# end
def skills_get_document
  path "/skills" do
    get "Get skill or list of skills." do
      tags "Skills"
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