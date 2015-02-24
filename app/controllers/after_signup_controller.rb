class AfterSignupController < Wicked::WizardController

  layout 'panel'

  steps :add_family, :add_mother, :add_father, :add_babies

  def show
    @family = current_user.family || Family.new(user_id: current_user.id)

    render_wizard
  end
end
