class PanelController < ApplicationController

  before_filter :authenticate_user!

  layout 'panel'

  def index
    @user = current_user

    respond_to do |format|
      format.html
    end
  end

end
