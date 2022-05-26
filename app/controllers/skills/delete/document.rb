
# module Courses::Delete::Document
#
# end
def skills_delete_document
  path "/skills" do
    delete "Delete skill by id." do
      tags "Skills"
      consumes "application/json"
      parameter name: :id, in: :query, schema: {
        type: :query,
        required: ["id"],
      }
      response "200", "Skill has been deleted." do
        let(:status) { { status: :deleted, data: :object } }
        run_test!
      end
    end
  end
end