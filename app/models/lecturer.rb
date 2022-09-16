class Lecturer < ActiveRecord::Base
    has_many :students
end