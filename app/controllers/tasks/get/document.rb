# module Courses::Get::Document
#
# end
def tasks_get_document
  path "/tasks" do
    get "Get task or list of tasks." do
      tags "Tasks"
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