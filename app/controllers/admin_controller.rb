class AdminController < ApplicationController
  def login
    if request.post?
      if params[:username] == "vinod" && params[:password] == "123456"
        session[:admin] = "vinod"
        redirect_to stores_url
      else
        flash[:notice]= "Invalid username/password.please try again"
        render :action=> :login, status: :unprocessable_entity

      end
    end
  end
   def logout
     session[:admin]=nil
     flash[:notice]= "you are logout"
     redirect_to :action=> :login
   end
end