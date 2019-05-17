class StudentsController < ApplicationController

#  new, create, show, edit, and update

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  # def create
  # @post = Post.new(post_params)
  # @post.save
  # redirect_to post_path(@post)
  # end

  def show
    @student = Student.find_by(params[:id])
  end

  def edit
    @student = Student.find_by(params[:id])
  end

  def update
    @student = Student.find_by(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  # def update
  #   @post = Post.find(params[:id])
  #   @post.update(post_params)
  #   redirect_to post_path(@post)
  # end
  private

  def student_params(*args)
  params.require(:student).permit(:first_name, :last_name)
  end

end
