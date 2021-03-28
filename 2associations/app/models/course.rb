class Course < ApplicationRecord

    #enrollments
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Enrollment

    #enrolled_students
    has_many :enrolled_students,
        through: :enrollments,
        source: :student

    #prerequisite
    belongs_to :prerequisite,
        primary_key: :id,
        foreign_key: :prereq_id,
        class_name: :Course
        optional: ture

    #instructor
    belongs_to :instructor,
        primary_key: :id,
        foreign_key: :instructor_id,
        class_name: :User

end
