class ReviewsController < ApplicationController
  include Reviews::Get::Handler
  include Reviews::Patch::Handler
  include Reviews::Post::Handler
  include Reviews::Delete::Handler
end
