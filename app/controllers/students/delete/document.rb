
# module Courses::Delete::Document
#
# end
def students_delete_document
  path "/students" do
    delete "Delete student by id." do
      tags "Students"
      consumes "application/json"
      parameter name: :id, in: :query, schema: {
        type: :query,
        required: ["id"],
      }
      response "200", "Student has been deleted." do
        let(:status) { { status: :deleted, data: :object } }
        run_test!
      end
    end
  end
end