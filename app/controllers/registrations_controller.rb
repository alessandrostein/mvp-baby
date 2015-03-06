class RegistrationsController < Devise::RegistrationsController

  layout 'auth'

  # GET /resource/sign_up
  def new
    build_resource({})
    respond_with self.resource
  end

  # POST /resource
  def create
    build_resource(sign_up_params)
    if resource.save
      yield resource if block_given?
        if resource.active_for_authentication?
          set_flash_message :notice, :signed_up if is_flashing_format?
          respond_with resource, :location => after_sign_up_path_for(resource)
        else
          set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
          expire_data_afterp_sign_in!
          respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  def after_sign_up_path_for(resource)
    case resource
      when User
        then root_path
      else
        root_path
    end
  end

end