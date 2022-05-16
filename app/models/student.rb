class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.by_grade 
    students = self.all
    students.order("grade DESC")
    # students.to_json
  end

end
