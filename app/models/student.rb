class Student < ApplicationRecord
    belongs_to :instructor
    validates :age, length: { maximum: 18 }
    validates :instructor_id, presence: true
    end
    