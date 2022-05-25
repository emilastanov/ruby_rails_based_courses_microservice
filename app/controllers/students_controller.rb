class StudentsController < ApplicationController
  include Students::Get::Handler
  include Students::Patch::Handler
  include Students::Post::Handler
  include Students::Delete::Handler
end
