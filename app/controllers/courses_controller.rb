class CoursesController < ApplicationController
  include Courses::Get::Handler
  include Courses::Patch::Handler
  include Courses::Post::Handler
  include Courses::Delete::Handler
end
