
# module Courses::Delete::Document
#
# end
def reviews_delete_document
  path "/reviews" do
    delete "Delete review by id." do
      tags "Reviews"
      consumes "application/json"
      parameter name: :id, in: :query, schema: {
        type: :query,
        required: ["id"],
      }
      response "200", "Review has been deleted." do
        let(:status) { { status: :deleted, data: :object } }
        run_test!
      end
    end
  end
end