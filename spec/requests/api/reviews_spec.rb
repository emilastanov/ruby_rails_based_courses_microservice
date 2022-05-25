require 'swagger_helper'
require_relative '../../../app/controllers/reviews/delete/document'
require_relative '../../../app/controllers/reviews/post/document'
require_relative '../../../app/controllers/reviews/patch/document'
require_relative '../../../app/controllers/reviews/get/document'

RSpec.describe 'reviews', type: :request do
  reviews_delete_document
  reviews_post_document
  reviews_patch_document
  reviews_get_document
end
