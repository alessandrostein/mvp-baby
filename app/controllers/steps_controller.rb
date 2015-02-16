class StepsController < ApplicationController

  layout 'panel'

  def new
    @child = Child.new
  end

end
