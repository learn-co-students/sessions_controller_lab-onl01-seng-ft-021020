class SessionsController < ApplicationController
    
    def new

    end

    def create
        if !params[:name] || params[:name].empty?
            redirect_to(controller: 'sessions', action: 'new')
        else
            if params[:name]
                session[:name] = params[:name]
                redirect_to '/'
            else
                redirect_to '/login'
            end
        end
    end

    def destroy 
        session.delete :name 
        redirect_to controller: 'application', action: 'hello'
    end
end
