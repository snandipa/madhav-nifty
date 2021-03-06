class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      #if Rails.env.development?
        Notifications.welcome.deliver
      #end
      
      redirect_to courses_url, :notice => "Successfully created course!!"
      
    else
      render :action => 'new'
    end
  end
end
