class AuthenticationsController < ApplicationController
  # GET /authentications
  # GET /authentications.json
  def index
    @authentications = current_user.authentications if current_user
  end

  
  def create
    omniauth = request.env["omniauth.auth"]
    authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
  if authentication
    flash[:notice] = "Signed in successfully."
    sign_in_and_redirect(:user, authentication.user)
  elsif current_user
    current_user.authentications.create!(:provider => omniauth['provider'], :uid => omniauth['uid'])
    flash[:notice] = "Authentication successful."
    redirect_to root_url
  else
    user = User.new
    user.apply_omniauth(omniauth)
    if user.save
      flash[:notice] = "Signed in successfully."
      sign_in_and_redirect(:user, user)
    else
      session[:omniauth] = omniauth.except('extra')
      redirect_to sign_up_url
    end
  end
end


    
   
  # DELETE /authentications/1
  # DELETE /authentications/1.json
  def destroy
    @@authentication = current_user.authentications.find(params[:id])
    @authentication.destroy
    flash[:notice] = "Successfully destroyed authentication."

    respond_to do |format|
      format.html { redirect_to authentications_url }
      format.json { head :no_content }
    end
  end
end
