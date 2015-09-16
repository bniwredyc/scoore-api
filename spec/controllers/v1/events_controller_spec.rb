require 'rails_helper'

RSpec.describe V1::EventsController do

  # login_admin

  # before (:all) do
  #   @event = create :event
  # end
  #
  # describe 'GET new' do
  #   it 'returns success response' do
  #     get :new
  #     assert_response :success
  #   end
  # end
  #
  # describe 'POST create' do
  #   it 'creates event' do
  #     assert_difference('Event.count') do
  #       post :create,
  #            :event => build(:event).attributes.symbolize_keys
  #     end
  #   end
  #
  #   it 'redirects to event' do
  #     post :create,
  #          :event => build(:event).attributes.symbolize_keys
  #     assert_redirected_to event_path(assigns(:event))
  #   end
  #
  #   context 'when slug is empty' do
  #     it 'returns unprocessable_entity result' do
  #       post :create,
  #            :format => :json,
  #            :event => build(:event, :slug => '').attributes.symbolize_keys
  #
  #       assert_response :unprocessable_entity
  #     end
  #   end
  # end
  #
  # describe 'GET index' do
  #   it 'returns success response' do
  #     get :index
  #     assert_response :success
  #   end
  # end
  #
  # describe 'GET show' do
  #   it 'returns success response' do
  #     get :show,
  #         :id => @event.id
  #
  #     assert_response :success
  #   end
  # end
  #
  # describe 'GET edit' do
  #   it 'returns success response' do
  #     get :edit,
  #         :id => @event.id
  #
  #     assert_response :success
  #   end
  # end
  #
  # describe 'PATCH update' do
  #   it 'redirects to event' do
  #     patch :update,
  #           :id => @event.id,
  #           :event => @event.attributes.symbolize_keys
  #
  #     assert_redirected_to event_path(assigns(:event))
  #   end
  #
  #   context 'when slug is empty' do
  #     it 'returns unprocessable_entity response' do
  #       event = create :event
  #       patch :update,
  #             :format => :json,
  #             :id => event.id,
  #             :event => build(:event, :slug => '').attributes.symbolize_keys
  #
  #       assert_response :unprocessable_entity
  #     end
  #
  #   end
  # end
  #
  # describe 'DELETE destroy' do
  #   it 'deletes event' do
  #     event = create :event
  #     assert_difference('Event.count', -1) do
  #       delete :destroy,
  #              :id => event.id
  #     end
  #   end
  #
  #   it 'redirects to events list' do
  #     event = create :event
  #     delete :destroy,
  #            :id => event.id
  #
  #
  #     assert_redirected_to events_path
  #   end
  # end
end