require 'rails_helper'

RSpec.describe V1::JudgesController do

  # login_admin

  # before (:all) do
  #   @event = create :event
  #   @contest = create :contest
  #   @judge = create :judge
  #   @event_judge = create :event_judge, :event => @event, :judge => @judge
  # end
  #
  # describe 'GET index' do
  #   context 'when event and contest specified' do
  #     it 'returns success response' do
  #       get :index,
  #           :event_id => @event.id,
  #           :contest_id => @contest.id
  #
  #       assert_response :success
  #     end
  #   end
  #
  #   context 'when only event specified' do
  #     it 'returns success response' do
  #
  #       get :index,
  #           :event_id => @event.id
  #
  #       assert_response :success
  #     end
  #   end
  # end
  #
  # describe 'GET show' do
  #   it 'redirects to edit action' do
  #     get :show,
  #         :event_id => @event.id,
  #         :id => @judge.id
  #
  #     assert_redirected_to :action => :edit
  #   end
  # end
  #
  # describe 'POST login' do
  #   it 'returns success response' do
  #     post :login,
  #          :format => :json,
  #          :pin => @event_judge.pin
  #
  #     assert_response :success
  #   end
  #
  #   it 'assigns correct event' do
  #     post :login,
  #          :format => :json,
  #          :pin => @event_judge.pin
  #
  #     event = assigns(:event)
  #     assert_equal @event_judge.event, event
  #   end
  #
  #   it 'saves judge id to session' do
  #     post :login,
  #          :format => :json,
  #          :pin => @event_judge.pin
  #
  #     assert_equal session[:judge_id], @event_judge.judge.id
  #   end
  # end
  #
  # describe 'POST logout' do
  #   it 'returns success response' do
  #     post :logout,
  #          :format => :json
  #
  #     assert_response :ok
  #   end
  #
  #   it 'clears judge_id session variable' do
  #     post :logout,
  #          :format => :json
  #
  #     assert_nil session[:judge_id]
  #   end
  # end
  #
  # describe 'GET new' do
  #   it 'returns success response' do
  #     get :new,
  #         :event_id => @event,
  #         :contest_id => @contest
  #
  #     assert_response :success
  #   end
  # end
  #
  # def post_create
  #   post :create,
  #        :event_id => @event.id,
  #        :contest_id => @contest.id,
  #        :judge => build(:judge).attributes.symbolize_keys
  # end
  #
  # describe 'POST create' do
  #   it 'creates judge' do
  #     assert_difference('Judge.count', 1) do
  #       post_create
  #     end
  #   end
  #
  #   it 'redirects to contest' do
  #     post_create
  #     assert_redirected_to event_contest_path(@event, @contest)
  #   end
  #
  #   it 'adds event_judge to judge' do
  #     post_create
  #     judge = assigns(:judge)
  #     assert judge.event_judges.exists? { |ej| ej.event == @event }
  #   end
  #
  #   it 'adds event_judge to contest' do
  #     post_create
  #     judge = assigns(:judge)
  #     assert @contest.event_judges.exists? { |ej| ej.judge == judge }
  #   end
  #
  #   context 'when first name is empty' do
  #     it 'returns unprocessable_entity response' do
  #       post :create,
  #            :format => :json,
  #            :event_id => @event.id,
  #            :contest_id => @contest.id,
  #            :judge => build(:judge, :first_name => '').attributes.symbolize_keys
  #
  #       assert_response :unprocessable_entity
  #     end
  #   end
  # end
  #
  # describe 'GET show' do
  #   it 'returns success response' do
  #     get :show,
  #         :event_id => @event.id,
  #         :contest_id => @contest.id,
  #         :id => @judge.id
  #
  #     assert_response :found
  #   end
  # end
  #
  # describe 'GET edit' do
  #   it 'returns success response' do
  #     get :edit, id: @judge, :event_id => @event, :contest_id => @contest
  #     assert_response :success
  #   end
  # end
  #
  # describe 'PATCH update' do
  #   it 'redirects to contest' do
  #     patch :update,
  #           :event_id => @event,
  #           :contest_id => @contest,
  #           :id => @judge.id,
  #           :judge => build(:judge).attributes.symbolize_keys
  #
  #     assert_redirected_to event_contest_path(@event, @contest)
  #   end
  #
  #   context 'when first name is empty' do
  #     it 'returns unprocessable_entity response' do
  #       patch :update,
  #             :format => :json,
  #             :event_id => @event,
  #             :contest_id => @contest,
  #             :id => @judge.id,
  #             :judge => build(:judge, :first_name => '').attributes.symbolize_keys
  #
  #       assert_response :unprocessable_entity
  #     end
  #   end
  # end
  #
  # def delete_destroy(id)
  #   delete :destroy,
  #          :event_id => @event.id,
  #          :contest_id => @contest.id,
  #          :id => id
  # end
  #
  # describe 'DELETE destroy' do
  #   it 'deletes judge' do
  #     judge = create :judge
  #     assert_difference('Judge.count', -1) do
  #       delete_destroy judge.id
  #     end
  #   end
  #
  #   it 'redirects to contest' do
  #     judge = create :judge
  #     delete_destroy judge.id
  #     assert_redirected_to event_contest_path(@event, @contest)
  #   end
  # end
end


