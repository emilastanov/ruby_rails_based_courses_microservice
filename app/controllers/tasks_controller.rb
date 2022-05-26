class TasksController < ApplicationController
  include Tasks::Get::Handler
  include Tasks::Patch::Handler
  include Tasks::Post::Handler
  include Tasks::Delete::Handler
end
