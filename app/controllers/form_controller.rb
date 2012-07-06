class FormController < ApplicationController
  def firstpage
    @student = Student.new()
  end
  
  def create
  binding.pry
    @student=Student.new(params[:student])
    @student.save!
    redirect_to :back
  end
end
