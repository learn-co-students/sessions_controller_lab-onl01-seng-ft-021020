class SessionsController < ApplicationController
  def new

  end

  def create

    if(params[:name] == false)
      redirect_to login_path
    elsif(params[:name].nil?)
      redirect_to login_path
    elsif(params[:name].empty?)
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end




    
end

  def destroy

    session.delete :name
  end
end
