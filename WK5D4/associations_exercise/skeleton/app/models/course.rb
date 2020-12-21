# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord

    has_many(
        :enrollments,
        foreign_key: :course_id,
        primary_key: :id,
        class_name: 'Enrollment'
    )

    # belongs_to(
    #     :student,
    #     primary_key: :id,
    #     foreign_key: :course_id,
    #     class_name: 'Course'
    # )
    
    belongs_to :prerequisite,
        foreign_key: :prereq_id,
        primary_key: :id,
        class_name: 'Course',
        optional: true
    
    belongs_to :instructor,
        foreign_key: :instructor_id,
        primary_key: :id,
        class_name: 'User'

    has_many :enrolled_students, 
        through: :enrollments, 
        source: :user

end
