class FormController < ApplicationController
  def firstpage
    @student = Student.new()
  end
  
  def second
  @display=Student.all()
  end
  
  def create
    @student=Student.new(params[:student])
    @student.save!
    redirect_to :back
  end
   
  
end
