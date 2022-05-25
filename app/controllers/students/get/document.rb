# module Courses::Get::Document
#
# end
def students_get_document
  path "/students" do
    get "Get student or list of students." do
      tags "Students"
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