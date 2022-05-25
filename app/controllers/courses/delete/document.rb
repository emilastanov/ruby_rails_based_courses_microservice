
# module Courses::Delete::Document
#
# end
def courses_delete_document
  path "/courses" do
    delete "Delete course by id." do
      tags "Courses"
      consumes "application/json"
      parameter name: :id, in: :query, schema: {
        type: :query,
        required: ["id"],
      }
      response "200", "Course has been deleted." do
        let(:status) { { status: :deleted, data: :object } }
        run_test!
      end
    end
  end
end