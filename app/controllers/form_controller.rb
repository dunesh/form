class FormController < ApplicationController
  def firstpage
    @student = Student.new()
  end
  
  def second
  @display=Student.all()
  end
  
  def create
    @student=Student.new(params[:student])
    if @student==0
    flash[:notice] = "error while entering data"
    else
    @student.save!
    flash[:notice] = "The user was successfully created"
    redirect_to :back
    end
  end
   
  
end
