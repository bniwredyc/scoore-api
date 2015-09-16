require 'rails_helper'

RSpec.describe V1::ContestsController do

  # login_admin

  # before (:all) do
  #   @event = create :event
  #   @contest = create :contest, :event => @event
  # end
  #
  # describe 'GET judge' do
  #   it 'returns :ok response' do
  #     get :judge
  #     assert_response :ok
  #   end
  # end
  #
  # describe 'POST reset_performances' do
  #   it 'resets perticipations' do
  #
  #     athlete = create :athlete
  #     contest = create :contest,
  #                      :athletes => [athlete],
  #                      :performances => create_list(:performance, 2, :athlete => athlete)
  #
  #     assert_equal 2, contest.performances.size
  #
  #     post :reset_performances,
  #          :event_id => contest.event.id,
  #          :id => contest.id
  #     assert_response :ok
  #     contest = assigns(:contest)
  #     assert_equal 1, contest.performances.size
  #   end
  # end
  #
  # describe 'PATCH update' do
  #   it 'redirects to contest' do
  #     patch :update,
  #           :event_id => @event.id,
  #           :id => @contest.id,
  #           :contest => @contest.attributes.symbolize_keys
  #
  #     assert_redirected_to event_contest_path(@event, assigns(:contest))
  #   end
  #
  #   context 'when slug is empty' do
  #     it 'returns unprocessable_entity response' do
  #       contest = build :contest, :slug => ''
  #       patch :update,
  #             :format => :json,
  #             :event_id => @event.id,
  #             :id => @contest.id,
  #             :contest => contest.attributes.symbolize_keys
  #
  #       assert_response :unprocessable_entity
  #     end
  #   end
  # end
  #
  #
  # describe 'GET clear' do
  #   it 'redirects to contest' do
  #     get :clear,
  #         :event_id => @event.id,
  #         :id => @contest.id
  #
  #
  #     assert_redirected_to event_contest_path(@event, assigns(:contest))
  #   end
  # end
  #
  # describe 'GET matrix' do
  #   it 'returns success response' do
  #     get :matrix,
  #         :event_id => @event.id,
  #         :id => @contest.id
  #
  #     assert_response :success
  #   end
  # end
  #
  # describe 'GET top' do
  #   it 'returns success response' do
  #     get :top,
  #         :event_id => @event.id,
  #         :id => @contest.id
  #
  #     assert_response :success
  #   end
  # end
  #
  # describe 'GET show' do
  #   it 'returns success response' do
  #     get :show,
  #         :event_id => @event.id,
  #         :id => @contest.id
  #
  #     assert_response :success
  #   end
  # end
  #
  # describe 'GET edit' do
  #   it 'returns success response' do
  #     get :edit,
  #         :event_id => @event.id,
  #         :id => @contest.id
  #
  #     assert_response :success
  #   end
  # end
  #
  # describe 'GET new' do
  #   it 'returns success response' do
  #     get :new,
  #         :event_id => @event.id
  #
  #     assert_response :success
  #   end
  # end
  #
  # describe 'DELETE destroy' do
  #   it 'destroys contest' do
  #
  #     contest = create :contest
  #
  #     assert_difference('Contest.count', -1) do
  #       delete :destroy,
  #              :event_id => contest.event_id,
  #              :id => contest.id
  #     end
  #   end
  #
  #   it 'redirects to event' do
  #     contest = create :contest
  #
  #     delete :destroy,
  #            :event_id => contest.event_id,
  #            :id => contest.id
  #
  #     assert_redirected_to event_path(contest.event)
  #   end
  # end
  #
  #
  # describe 'POST restore_removed_performances' do
  #   it 'restores removed performances' do
  #
  #     athlete = create :athlete
  #     performance = create :performance, :athlete => athlete
  #     contest = create :contest,
  #                      :athletes => [athlete],
  #                      :performances => [performance]
  #
  #     assert_equal 1, contest.athletes.size
  #
  #     contest.performances.destroy performance
  #
  #     assert_equal 1, contest.athletes.size
  #     assert_equal 0, contest.performances.size
  #
  #     post :restore_removed_performances,
  #          :event_id => contest.event_id,
  #          :id => contest.id
  #
  #
  #     assert_response :ok
  #     contest = assigns(:contest)
  #     assert_equal 1, contest.athletes.size
  #     assert_equal 1, contest.performances.size
  #   end
  # end
  #
  # describe 'POST duplicate_performances' do
  #   it 'duplicates performances ' do
  #     athlete = create :athlete
  #     contest = create :contest,
  #                      :athletes => [athlete],
  #                      :performances => build_list(:performance, 2, :athlete => athlete)
  #
  #     assert_equal 2, contest.performances.size
  #
  #     post :duplicate_performances,
  #          :event_id => contest.event.id,
  #          :id => contest.id
  #
  #     assert_response :ok
  #     contest = assigns(:contest)
  #     assert_equal 4, contest.performances.size
  #   end
  # end
  #
  # describe 'POST create' do
  #   it 'creates contest' do
  #     contest = build :contest
  #
  #     assert_difference('Contest.count') do
  #       post :create,
  #            :event_id => @event.id,
  #            :contest => contest.attributes.symbolize_keys
  #     end
  #   end
  #
  #   it 'redirects to contest' do
  #     contest = build :contest
  #
  #     post :create,
  #          :event_id => @event.id,
  #          :contest => contest.attributes.symbolize_keys
  #
  #     assert_redirected_to event_contest_path(@event, assigns(:contest))
  #   end
  #
  #   it 'saves correct type of contest' do
  #     contest = build :contest, :type => 'Contest::PerformanceBestTrick'
  #
  #     post :create,
  #          :event_id => @event.id,
  #          :contest => contest.attributes.symbolize_keys
  #
  #     assert_instance_of Contest::PerformanceBestTrick, assigns(:contest)
  #   end
  #
  #   context 'when slug is empty' do
  #     it 'returns unprocessable_entity response' do
  #       contest = build :contest, :slug => ''
  #
  #       post :create,
  #            :format => :json,
  #            :event_id => @event.id,
  #            :contest => contest.attributes.symbolize_keys
  #
  #       assert_response :unprocessable_entity
  #     end
  #   end
  # end
end

