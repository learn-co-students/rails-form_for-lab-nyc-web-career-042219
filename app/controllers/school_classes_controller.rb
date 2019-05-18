class SchoolClassesController < ApplicationController

  before_action :set_school_class, only: %i(show edit update)

  def index
    @classes = SchoolClass.all
  end

  def show; end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @class = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@class)
  end

  def edit; end

  def update
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  private

    def set_school_class
      @school_class = SchoolClass.find(params[:id])
    end

    def school_class_params
      params.require(:school_class).permit(:title, :room_number)
    end

end