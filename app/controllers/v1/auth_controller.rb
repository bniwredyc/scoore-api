require 'auth_token'

class V1::AuthController < Devise::SessionsController
  clear_respond_to
  respond_to :json

  def create

    # This is the default behavior from devise - view the sessions controller source:
    # https://github.com/plataformatec/devise/blob/master/app/controllers/devise/sessions_controller.rb#L16
    self.resource = warden.authenticate!(auth_options)
    sign_in(resource_name, resource)
    yield resource if block_given?

    # Here we're deviating from the standard behavior by issuing our JWT
    # to any JS based client.
    token = AuthToken.encode({user_id: resource.id})
    render json: {user: resource, token: token}
  end

end
