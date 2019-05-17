class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  # def create
  # @post = Post.new(post_params)
  # @post.save
  # redirect_to post_path(@post)
  # end



  def show
    @school_class = SchoolClass.find_by(params[:id])
  end

  def edit
    @school_class = SchoolClass.find_by(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  # def update
  #   @post = Post.find(params[:id])
  #   @post.update(post_params)
  #   redirect_to post_path(@post)
  # end
  private

  def school_class_params(*args)
  params.require(:school_class).permit(:title, :room_number)
  end


end
