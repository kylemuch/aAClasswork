# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    has_many(
        :enrollments,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: 'Enrollment'
    )
end

# class Course < ApplicationRecord
#   belongs_to(
#     :professor,
#     class_name: 'Professor',
#     foreign_key: :professor_id,
#     primary_key: :id
#   )
# end

# class Professor < ApplicationRecord
#   has_many(
#     :courses,
#     class_name: 'Course',
#     foreign_key: :professor_id,
#     primary_key: :id
#   )
# end
