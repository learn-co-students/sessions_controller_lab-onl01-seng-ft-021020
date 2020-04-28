class SessionsController < ApplicationController

    def new
        # nothing to do here!
    end
 
    def create    
        if params[:name].nil? || params[:name] == ""
            redirect_to '/login'
        elsif params[:name]
            session[:name] = params[:name]
            redirect_to '/'
        elsif session[:name].nil?
            redirect_to '/login'
        end
    end

    def destroy
        session.delete :name
    end

end