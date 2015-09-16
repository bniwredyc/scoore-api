require "rails_helper"

RSpec.describe V1::AthletesController do
  require 'auth_token'

  before (:all) do
    @athlete = create :athlete
    @event = create :event
    @contest = create :contest
  end

  before(:each) do
    request.headers['Authorization'] = AuthToken.encode({user_id: 1})
  end

  # describe 'POST create' do
  #   it 'creates athlete for contest' do
  #     assert_difference('Athlete.count', 1) do
  #       post :create,
  #            :event_id => @event.id,
  #            :contest_id => @contest.id,
  #            :athlete => build(:athlete).attributes.symbolize_keys
  #     end
  #
  #     assert_redirected_to event_contest_athletes_path(@event, @contest)
  #   end
  #
  #   it 'creates athlete for event' do
  #     assert_difference('Athlete.count', 1) do
  #       post :create,
  #            :event_id => @event.id,
  #            :athlete => build(:athlete).attributes.symbolize_keys
  #     end
  #
  #     assert_redirected_to event_athletes_path(@event)
  #   end
  #
  #   context 'when first name is empty' do
  #     it 'returns unprocessable_entity response' do
  #
  #       post :create,
  #            :format => :json,
  #            :event_id => @event.id,
  #            :contest_id => @contest.id,
  #            :athlete => build(:athlete, :first_name => '').attributes.symbolize_keys
  #
  #       assert_response :unprocessable_entity
  #     end
  #   end
  # end

  # describe 'GET show' do
  #   it 'shows contest athlete' do
  #     get :show,
  #         :id => @athlete.id,
  #         :event_id => @event.id,
  #         :contest_id => @contest.id
  #
  #     assert_response :redirect
  #   end
  #
  #   it 'shows event athlete' do
  #     get :show,
  #         :id => @athlete.id,
  #         :event_id => @event.id
  #
  #     assert_response :redirect
  #   end
  # end
  #
  # describe 'GET edit' do
  #   it 'returns success response' do
  #     get :edit,
  #         :event_id => @event.id,
  #         :contest_id => @contest.id,
  #         :id => @athlete.id
  #     assert_response :success
  #   end
  # end
  #
  # describe 'PATCH update' do
  #   it 'updates contest athlete' do
  #     patch :update,
  #           :event_id => @event.id,
  #           :contest_id => @contest.id,
  #           :id => @athlete.id,
  #           :athlete => @athlete.attributes.symbolize_keys
  #
  #     assert_redirected_to event_contest_path(@event, @contest)
  #   end
  #
  #   it 'updates event athlete' do
  #     patch :update,
  #           :event_id => @event.id,
  #           :id => @athlete.id,
  #           :athlete => @athlete.attributes.symbolize_keys
  #
  #     assert_redirected_to event_path(@event)
  #   end
  #
  #   context 'when first name is empty' do
  #     it 'returns unprocessable_entity response' do
  #       patch :update,
  #             :format => :json,
  #             :event_id => @event.id,
  #             :contest_id => @contest.id,
  #             :id => @athlete.id,
  #             :athlete => build(:athlete, :first_name => '').attributes.symbolize_keys
  #
  #       assert_response :unprocessable_entity
  #     end
  #   end
  # end

  # TODO: проверить, что возвращается то, что нужно

  describe 'GET index' do
    it 'returns success response for contest' do
      get :index,
          :format => :json,
          :event_id => @event.id,
          :contest_id => @contest.id

      assert_response :success
    end

    it 'returns success response for event' do
      get :index,
          :format => :json,
          :event_id => @event.id

      assert_response :success
    end

    it 'returns success response' do
      get :index,
          :format => :json

      assert_response :success
    end
  end

  # describe 'DELETE destroy' do
  #   it 'destroys athlete' do
  #     athlete = create :athlete
  #
  #     assert_difference('Athlete.count', -1) do
  #       delete :destroy,
  #              :event_id => @event.id,
  #              :contest_id => @contest.id,
  #              :id => athlete.id
  #     end
  #
  #     assert_redirected_to event_contest_path(@event, @contest)
  #   end
  # end
end




