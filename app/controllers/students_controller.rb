class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def grades
        ordered_students = Student.all.order(grade: :desc)
        render json: ordered_students
    end
end
