class SkillsController < ApplicationController
  include Skills::Get::Handler
  include Skills::Patch::Handler
  include Skills::Post::Handler
  include Skills::Delete::Handler
end
