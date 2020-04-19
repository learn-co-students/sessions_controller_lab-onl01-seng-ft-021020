class SessionsController < ApplicationController
  def new
      
  end

  def create
    redirect_to login_path and return if params[:name].blank? || params[:name].nil?
    session[:name] = params[:name]
    redirect_to root_path 
  end

  def destroy
    session.delete(:name)
  end
end
