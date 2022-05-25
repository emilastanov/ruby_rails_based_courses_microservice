class Course < ApplicationRecord
  has_many :students
  has_many :reviews
end
