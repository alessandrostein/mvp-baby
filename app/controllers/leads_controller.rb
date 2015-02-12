class LeadsController < ApplicationController

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
    @lead.save

    render :new
  end

  private
    def lead_params
      params.require(:lead).permit(:email)
    end
end
