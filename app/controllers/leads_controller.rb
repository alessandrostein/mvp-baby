class LeadsController < ApplicationController

  layout 'site'

  def index
    @lead = Lead.new
  end

  def create
    unless params[:email].blank?
      @lead = Lead.new(lead_params)
      @lead.save
    end

    redirect_to new_user_registration_path
  end

  private
    def lead_params
      params.require(:lead).permit(:email)
    end
end
