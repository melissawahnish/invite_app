class AuthenticationsController < ApplicationController
  # GET /authentications
  # GET /authentications.json
  def index
    @authentications = current_user.authentications if current_user
  end

  
  def create
    auth = request.env["omniauth.auth"]
    current_user.authentications.find_or_create_by_provider_and_uid(auth['provider'], auth['uid'])
    flash[:notice] = "Authentication successful."
    respond_to do |format|
        format.html { redirect_to authentications_url }
        format.json { head :no_content }
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
