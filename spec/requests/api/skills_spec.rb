require 'swagger_helper'
require_relative '../../../app/controllers/skills/delete/document'
require_relative '../../../app/controllers/skills/post/document'
require_relative '../../../app/controllers/skills/patch/document'
require_relative '../../../app/controllers/skills/get/document'

RSpec.describe 'skills', type: :request do
  skills_delete_document
  skills_post_document
  skills_patch_document
  skills_get_document
end
