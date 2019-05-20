class SchoolClassesController < ApplicationController

    def new
        @schoolclass = SchoolClass.new
    end

    def create
        @schoolclass = SchoolClass.create(school_class_params)
        redirect_to @schoolclass
    end

    def show
        @schoolclass = SchoolClass.find(params[:id])
    end

    def edit
        @schoolclass = SchoolClass.find(params[:id])
    end

    def update
        @schoolclass = SchoolClass.update(school_class_params)
        redirect_to @schoolclass
    end

    private
 
    def school_class_params
    params.require(:school_class).permit(:title, :room_number)
    end

end
