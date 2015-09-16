require 'rails_helper'

RSpec.describe V1::ScoresController do

  # before (:all) do
  #   @event = create :event
  #   @contest = create :contest
  #   @judge = create :judge
  #   @event_judge = create :event_judge, :judge => @judge, :event => @event
  # end
  #
  # before (:each) do
  #   session[:judge_id] = @judge.id
  # end
  #
  # describe 'GET show' do
  #   it 'returns success response' do
  #     score = create :score
  #
  #     get :show,
  #         :format => :json,
  #         :contest_id => @contest.id,
  #         :event_id => @event.id,
  #         :id => score.id
  #
  #     assert_response :success
  #   end
  #
  #   context 'when judge id is not stored in session' do
  #     it 'returns unauthorized response' do
  #       score = create :score
  #
  #       session[:judge_id] = nil
  #
  #       get :show,
  #           :format => :json,
  #           :contest => @contest,
  #           :event => @event,
  #           :id => score.id
  #
  #       assert_response :unauthorized
  #     end
  #
  #   end
  # end
  #
  # def post_create(value)
  #   post :create,
  #        :format => :json,
  #        :contest => @contest,
  #        :event => @event,
  #        :score => build(:score, :value => value).attributes.symbolize_keys
  # end
  #
  # describe 'POST create' do
  #   it 'creates score' do
  #     assert_difference('Score.count', 1) do
  #       post_create 50
  #     end
  #   end
  #
  #   it 'returns created response' do
  #     post_create 50
  #     assert_response :created
  #   end
  #
  #   context 'when value is empty' do
  #     it 'returns unprocessable_entity response' do
  #       post_create nil
  #       assert_response :unprocessable_entity
  #     end
  #   end
  #
  # end
  #
  # def patch_update(score)
  #   patch :update,
  #         :format => :json,
  #         :contest => @contest,
  #         :event => @event,
  #         :id => score.id,
  #         :score => score.attributes.symbolize_keys
  # end
  #
  # describe 'PATCH update' do
  #   it 'updates score' do
  #     score = create :score, :value => 100
  #     assert_equal 100, score.value
  #
  #     score.value = 50
  #     patch_update score
  #
  #     score = assigns(:score)
  #     assert_equal 50, score.value
  #   end
  #
  #   it 'returns success response' do
  #     score = create :score, :value => 100
  #     assert_equal 100, score.value
  #
  #     score.value = 50
  #     patch_update score
  #
  #     assert_response :success
  #   end
  #
  #   context 'when value is empty' do
  #     it "doesn't update score" do
  #       score = create :score, :value => 100
  #       score.value = nil
  #
  #       patch_update score
  #
  #       score = Score.find(score.id)
  #       assert_equal 100, score.value
  #     end
  #
  #     it 'returns unprocessable_entity response' do
  #       score = create :score, :value => 100
  #       score.value = nil
  #
  #       patch_update score
  #
  #       assert_response :unprocessable_entity
  #     end
  #   end
  # end
  #
  # def delete_destroy score
  #   post :destroy,
  #        :format => :json,
  #        :contest => @contest,
  #        :event => @event,
  #        :id => score.id
  # end
  #
  # describe 'DELETE destroy' do
  #   it 'deletes score' do
  #     score = create :score
  #
  #     assert_difference('Score.count', -1) do
  #       delete_destroy score
  #     end
  #   end
  #
  #   it 'returns no_content response' do
  #     score = create :score
  #     delete_destroy score
  #     assert_response :no_content
  #   end
  # end

end