class HomeController < ApplicationController
  respond_to :html, :json

  def index
  end

  def admin
  end



  def delete_subchapter_profile
    @subchapter_id = params[:subchapter_id]
    @profile_id = params[:profile_id]

    @subchapter = Subchapter.find(@subchapter_id).profiles.delete(@profile_id)
    
    respond_with( admin_path , :layout => !request.xhr?)
  end



  def create_subchapter_profile
     @subchapter_id = params[:subchapter_id]
    @profile_id = params[:profile_id]

    Subchapter.find(@subchapter_id).suggestions.create(:profile_id=>@profile_id)
    respond_with( admin_path , :layout => !request.xhr?)
  end
end
