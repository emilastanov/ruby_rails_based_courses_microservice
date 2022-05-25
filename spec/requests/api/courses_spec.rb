require 'swagger_helper'
require_relative '../../../app/controllers/courses/delete/document'
require_relative '../../../app/controllers/courses/post/document'
require_relative '../../../app/controllers/courses/patch/document'
require_relative '../../../app/controllers/courses/get/document'

RSpec.describe 'courses', type: :request do
  courses_delete_document
  courses_post_document
  courses_patch_document
  courses_get_document
end
