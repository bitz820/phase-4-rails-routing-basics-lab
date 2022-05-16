class StudentsController < ApplicationController
    def index
        # byebug
        students = Student.all
        render json: students
    end

    def grades
        # students = Student.all
        # students_by_grade = students.order("grade DESC")
        render json: Student.by_grade
        # byebug
        #  render json: students.order("grade DESC")
        # students
    end

    def highest_grade

        # students = Student.all
        # students_by_grade = students.order("grade DESC")
        render json: Student.by_grade.first

        # byebug
    end
end
