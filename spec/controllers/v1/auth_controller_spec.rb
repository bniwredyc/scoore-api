require "rails_helper"

RSpec.describe V1::AuthController do
  before(:each) do
    @request.env['devise.mapping'] = Devise.mappings[:user]
  end

  describe 'POST create' do
    it 'returns token when json format' do
      post :create,
           :format => :json,
           :user => {
               :email => 'admin@api.scoo.red',
               :password => 'eatsleepscoorerepeat'
           }
      assert_response :ok
      json = JSON.parse(response.body)
      expect(json['token']).to_not be_empty
    end
  end
end
