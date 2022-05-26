require 'swagger_helper'
require_relative '../../../app/controllers/tasks/delete/document'
require_relative '../../../app/controllers/tasks/post/document'
require_relative '../../../app/controllers/tasks/patch/document'
require_relative '../../../app/controllers/tasks/get/document'

RSpec.describe 'tasks', type: :request do
  tasks_delete_document
  tasks_post_document
  tasks_patch_document
  tasks_get_document
end
