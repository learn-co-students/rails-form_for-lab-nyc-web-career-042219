class StudentsController < ApplicationController
  def new #form
    @student = Student.new
    #still requires an empty student instance to understand attr
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to "/students/#{@student.id}"
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to "/students/#{@student.id}"
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end