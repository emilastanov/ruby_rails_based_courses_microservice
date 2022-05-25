require 'swagger_helper'
require_relative '../../../app/controllers/students/delete/document'
require_relative '../../../app/controllers/students/post/document'
require_relative '../../../app/controllers/students/patch/document'
require_relative '../../../app/controllers/students/get/document'

RSpec.describe 'students', type: :request do
  students_delete_document
  students_post_document
  students_patch_document
  students_get_document
end
