class User < ApplicationRecord

  #enrollments
  has_many :enrollments,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :Enrollment
  
  #enrolled_courses
  has_many :enrolled_courses,
    through: :enrollments,
    source: :course
  
end
