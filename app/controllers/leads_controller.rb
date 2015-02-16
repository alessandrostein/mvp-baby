class LeadsController < ApplicationController

  layout 'site'

  def index
    @lead = Lead.new
  end

  def create
    #unless params[:email].blank?
      @lead = Lead.new(lead_params)
      @lead.save

#      render 'steps/child'

      steps = { controller: :steps, action: :new }
      redirect_to steps


    #end
  end

  private
    def lead_params
      params.require(:lead).permit(:email)
    end
end
