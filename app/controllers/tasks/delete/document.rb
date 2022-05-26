
# module Courses::Delete::Document
#
# end
def tasks_delete_document
  path "/tasks" do
    delete "Delete skill by id." do
      tags "Tasks"
      consumes "application/json"
      parameter name: :id, in: :query, schema: {
        type: :query,
        required: ["id"],
      }
      response "200", "Task has been deleted." do
        let(:status) { { status: :deleted, data: :object } }
        run_test!
      end
    end
  end
end