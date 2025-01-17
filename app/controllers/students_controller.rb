class StudentsController < ApplicationController
  def index 
    students = Student.all
    render json: students
  end
  def grades
     students = Student.order(grade: :desc)
    render json: students
  end
  def highest_grade
    highest_grade = Student.maximum(:grade)
    students = Student.find_by(grade:highest_grade)
    render json:students
  end
end
