require 'rails_helper'

RSpec.describe V1::PerformancesController do

  # login_admin

  # before (:all) do
  #   @event = create :event
  #   @contest = create :contest
  #   @athlete = create :athlete
  #   @performance = create :performance
  # end
  #
  # describe 'GET index' do
  #   it 'returns success response' do
  #     get :index,
  #         :format => :json,
  #         :event_id => @event.id,
  #         :contest_id => @contest.id
  #
  #     assert_response :success
  #   end
  # end
  #
  # describe 'GET show' do
  #   it 'returns success response' do
  #     get :show,
  #         :format => :json,
  #         :event_id => @event.id,
  #         :contest_id => @contest.id,
  #         :id => @performance.id
  #
  #     assert_response :success
  #   end
  # end
  #
  # def post_create
  #   post :create,
  #        :event_id => @event.id,
  #        :contest_id => @contest.id,
  #        :performance => build(:performance).attributes.symbolize_keys
  # end
  #
  # describe 'POST create' do
  #
  #   it 'creates performance' do
  #     assert_difference('Performance.count', 1) do
  #       post_create
  #     end
  #   end
  #
  #   it 'returns found response' do
  #     post_create
  #     assert_response :found
  #   end
  #
  #   context 'when sort is empty' do
  #     it 'returns unprocessable_entity response' do
  #       post :create,
  #            :format => :json,
  #            :event_id => @event.id,
  #            :contest_id => @contest.id,
  #            :performance => build(:performance, :sort => nil).attributes.symbolize_keys
  #
  #       assert_response :unprocessable_entity
  #     end
  #   end
  #
  # end
  #
  # def delete_destroy(id)
  #   delete :destroy,
  #          :format => :json,
  #          :event_id => @event.id,
  #          :contest_id => @contest.id,
  #          :id => id
  # end
  #
  # describe 'DELETE destroy' do
  #   it 'deletes performance' do
  #     performance = create :performance
  #
  #     assert_difference('Performance.count', -1) do
  #       delete_destroy performance.id
  #     end
  #   end
  #
  #   it 'returns no_content response' do
  #     performance = create :performance
  #     delete_destroy performance.id
  #     assert_response :no_content
  #   end
  # end
  #
  # describe 'PATCH update' do
  #
  #   it 'updates performance type' do
  #     performance = create :performance
  #
  #     patch :update,
  #           :format => :json,
  #           :event_id => @event.id,
  #           :contest_id => @contest.id,
  #           :id => performance.id,
  #           :performance => build(:performance, :type_cd => 2).attributes.symbolize_keys
  #
  #     performance = assigns(:performance)
  #     assert_not_nil performance
  #     assert performance.jam?
  #   end
  #
  #   it 'returns success response' do
  #     performance = create :performance
  #
  #     patch :update,
  #           :format => :json,
  #           :event_id => @event.id,
  #           :contest_id => @contest.id,
  #           :id => performance.id,
  #           :performance => build(:performance, :type_cd => 2).attributes.symbolize_keys
  #
  #     assert_response :success
  #   end
  #
  #   context 'when sort is nil' do
  #     it 'returns response' do
  #       performance = create :performance
  #
  #       patch :update,
  #             :format => :json,
  #             :event_id => @event.id,
  #             :contest_id => @contest.id,
  #             :id => performance.id,
  #             :performance => build(:performance, :sort => nil).attributes.symbolize_keys
  #
  #       assert_response :unprocessable_entity
  #     end
  #   end
  #
  # end
  #
  # def post_start(id)
  #   # TODO: performance_id => id
  #   post :start,
  #        :format => :json,
  #        :event_id => @event.id,
  #        :contest_id => @contest.id,
  #        :id => id
  #
  # end
  #
  # describe 'POST start' do
  #
  #   it 'returns success response' do
  #     performance = create :performance
  #     post_start performance.id
  #     assert_response :success
  #   end
  #
  #   it 'starts performance' do
  #     performance = create :performance
  #     post_start performance.id
  #
  #     performance = assigns(:performance)
  #     assert performance.is_started
  #   end
  #
  #   context 'when performance id is nil' do
  #     # TODO: very bad behaviour
  #     it 'returns internal_server_error result' do
  #       post_start nil
  #       assert_response :internal_server_error
  #     end
  #   end
  #
  # end
  #
  # def post_finish(id)
  #   # TODO: performance_id => id
  #   post :finish,
  #        :format => :json,
  #        :event_id => @event.id,
  #        :contest_id => @contest.id,
  #        :id => id
  #
  # end
  #
  # describe 'POST finish' do
  #
  #   # TODO: not started performance
  #
  #   it 'returns success response' do
  #     performance = create :performance
  #     performance.start
  #     post_finish performance.id
  #     assert_response :success
  #   end
  #
  #   it 'finishes performance' do
  #     performance = create :performance
  #     performance.start
  #     post_finish performance.id
  #     performance = assigns(:performance)
  #     assert performance.is_ended
  #   end
  #
  #   context 'when performance id is nil' do
  #     # TODO: very bad behaviour
  #     it 'returns internal server error response' do
  #       post_finish nil
  #       assert_response :internal_server_error
  #     end
  #   end
  # end
  #
  # describe 'POST update_order' do
  #   it "updates performances' order" do
  #     performance1 = create :performance, :sort => 1
  #     performance2 = create :performance, :sort => 2
  #
  #     post :update_order,
  #          :performances_order => [
  #              {
  #                  :id => performance1.id,
  #                  :parent_id => nil,
  #                  :sort => 2
  #              },
  #              {
  #                  :id => performance2.id,
  #                  :parent_id => nil,
  #                  :sort => 1
  #              }
  #          ]
  #
  #     assert_response :success
  #
  #     performance1 = Performance.find(performance1.id)
  #     assert_equal 2, performance1.sort
  #
  #     performance2 = Performance.find(performance2.id)
  #     assert_equal 1, performance2.sort
  #   end
  #
  #   context 'when performance id is nul' do
  #     # TODO: very bad behaviour
  #     it 'returns internal server error response' do
  #       post :update_order,
  #            :performances_order => [
  #                {
  #                    :id => nil,
  #                    :parent_id => nil,
  #                    :sort => 2
  #                }
  #            ]
  #
  #       assert_response :internal_server_error
  #     end
  #   end
  #
  # end

end
