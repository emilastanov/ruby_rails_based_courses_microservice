# module Courses::Patch::Document
#
# end

def tasks_patch_document
  path "/tasks" do
    patch "Update data of task." do
      tags "Tasks"
      consumes "application/json"
      parameter name: :task, in: :body, schema: {
        type: :object,
        properties: {
          id: {type: :integer},
          type: {type: :integer},
          course_id: {type: :integer},
          data: {type: :json}
        },
      }
      response "201", "Task updated" do
        let(:course) { {
          id: 1,
          title: "skill",
          description: "About review",
          logotype: "http://example.com/logo.png"
        } }
        run_test!
      end
    end
  end
end