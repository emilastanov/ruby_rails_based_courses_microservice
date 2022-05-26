class Course < ApplicationRecord
  has_many :students
  has_many :reviews
  has_many :skills
end
