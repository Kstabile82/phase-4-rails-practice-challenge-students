class StudentsController < ApplicationController
    def show
        student = find_student
        render json: find_student.to_json
    end
    def index
        students = Student.all  
        render json: students.to_json
    end
    def create
        student = Student.create(student_params)
        if student.valid? 
            render json: student, status: :created
        else
            render json: { errors: student.errors }, status: :unprocessable_entity
        end
    end
    private 
    def find_student 
        Student.find(params[:id])
    end
    def student_params
        params.permit(:name, :age, :major, :instructor_id)
    end
end
