class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    if params[:student]
      @student = params[:student]
    end
  end

  def create
  @student = params
  redirect_to new_student_path(student: @student)
end

end
