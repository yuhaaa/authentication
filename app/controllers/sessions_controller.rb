class SessionsController < ApplicationController
  def new
  end
  
  def create
    User.find_by(email: params[:email])
    user = User.find_by(nickname: params[:email])
    
    if user && user.authenticate(params[:password])
    
    session[:user_id] = user.id
    redirect_to contents_path
    
    else
      
    flash[:alert] = 'Wrong email or password'
    render 'new'
    end
  
  end
  
  def destroy
    session.delete(:user_id)
    @current_user =nil
    redirect_to contents_path
  end
end