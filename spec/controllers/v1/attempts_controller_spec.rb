require 'rails_helper'

RSpec.describe V1::AttemptsController do

  # login_admin

  # before (:all) do
  #   @event = create :event
  #   @contest = create :contest, :event => @event
  #   @athlete = create :athlete
  #   @performance = create :performance, :athlete => @athlete, :contest => @contest
  #   @judge = create :judge
  #   @event_judge = create :event_judge, :event => @event, :judge => @judge
  # end
  #
  # describe 'POST create' do
  #   it 'creates attempt' do
  #     attempt = build :attempt
  #     assert_difference('Attempt.count', 1) do
  #       post :create,
  #            :format => :json,
  #            :attempt => attempt.attributes.symbolize_keys
  #     end
  #
  #     assert_response :created
  #   end
  #
  #   context 'when performance is empty' do
  #     it 'return unprocessable_entity response' do
  #       attempt = build :attempt, :performance => nil
  #
  #       post :create,
  #            :format => :json,
  #            :attempt => attempt.attributes.symbolize_keys
  #
  #       assert_response :unprocessable_entity
  #     end
  #   end
  #
  #
  # end
  #
  # describe 'DELETE destroy' do
  #   it 'destroys attempt' do
  #     attempt = create :attempt
  #
  #     assert_difference('Attempt.count', -1) do
  #       delete :destroy,
  #              :format => :json,
  #              :id => attempt.id
  #     end
  #
  #     assert_response :success
  #   end
  # end
  #
  # describe 'PATCH update' do
  #   it 'updates attempt' do
  #     attempt = create :attempt, :performance => @performance
  #     new_performance = create :performance
  #     attempt.performance = new_performance
  #
  #     patch :update,
  #           :format => :json,
  #           :id => attempt.id,
  #           :attempt => attempt.attributes.symbolize_keys
  #
  #     assert_response :ok
  #     attempt = assigns(:attempt)
  #     attempt.performance_id = new_performance.id
  #   end
  #
  #   context 'when performance is empty' do
  #     it 'returns unprocessable_entity' do
  #       attempt = create :attempt
  #       attempt.performance = nil
  #
  #       patch :update,
  #             :format => :json,
  #             :id => attempt.id,
  #             :attempt => attempt.attributes.symbolize_keys
  #
  #       assert_response :unprocessable_entity
  #     end
  #
  #   end
  # end
  #
  # describe 'POST index' do
  #   context 'when there are no started attempts' do
  #     it 'returns empty array' do
  #       post :index,
  #            :format => :json,
  #            :pin => @event_judge.pin
  #
  #       assert_response :ok
  #       attempts = assigns(:attempts)
  #       assert attempts.size == 0
  #     end
  #   end
  #
  #   context 'when score from current judge is present' do
  #     it "doesn't return attempts" do
  #       attempt = create :attempt, :performance => @performance
  #       attempt.start
  #
  #       create :score, :attempt => attempt, :judge => @judge
  #
  #       post :index,
  #            :format => :json,
  #            :pin => @event_judge.pin
  #
  #       assert_response :ok
  #       attempts = assigns(:attempts)
  #       assert_equal 0, attempts.size
  #     end
  #   end
  # end
  #
  # describe 'GET index' do
  #   context 'when there is started attempt' do
  #     # TODO: можно лучше
  #     it 'returns started attempt with loaded scores' do
  #       performance = create :performance, :contest => @contest
  #       attempt = create :attempt, :performance => performance
  #       attempt.start
  #
  #       get :index,
  #           :format => :json,
  #           :pin => @event_judge.pin
  #
  #       assert_response :ok
  #       attempts = assigns(:attempts)
  #       assert_equal 1, attempts.size
  #       attempts.each do |a|
  #         assert a.scores.loaded?
  #       end
  #     end
  #
  #     it 'returns started attempts from one event' do
  #       # TODO: сильная связь с инициализацией
  #       attempt1 = create :attempt, :performance => @performance
  #       attempt2 = create :attempt, :performance => create(:performance)
  #
  #       attempt1.start
  #       attempt2.start
  #
  #       get :index,
  #           :format => :json,
  #           :pin => @event_judge.pin
  #
  #       assert_response :ok
  #       attempts = assigns(:attempts)
  #       assert_equal 1, attempts.size
  #     end
  #   end
  # end
end