require 'rails_helper'

RSpec.describe V1::WelcomeController do

  describe 'GET index' do
    it 'redirects to /admin' do
      get :index
      assert_redirected_to '/admin'
    end
  end
end
