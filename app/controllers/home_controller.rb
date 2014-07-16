class HomeController < ApplicationController
  respond_to :html, :json

  def index
  end

  def admin
  end

  def capitulo
  end



  def delete_subchapter_profile
    @subchapter_id = params[:subchapter_id]
    @profile_id = params[:profile_id]

    @subchapter = Chapter.find(@subchapter_id).profiles.delete(@profile_id)
    
    respond_with( admin_path , :layout => !request.xhr?)
  end



  def create_subchapter_profile
     @subchapter_id = params[:subchapter_id]
    @profile_id = params[:profile_id]

    Chapter.find(@subchapter_id).suggestions.create(:profile_id=>@profile_id)
    respond_with( admin_path , :layout => !request.xhr?)
  end
end
