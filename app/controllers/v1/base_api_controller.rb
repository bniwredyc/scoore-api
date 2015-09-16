class V1::BaseApiController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  protect_from_forgery with: :null_session

  before_filter :authenticate_user!
  before_action :set_contest, :set_event, :set_organization

  respond_to :json

  def not_found
    api_error(status: 404, errors: 'Not found')
  end

  protected

  def set_event
    @event = Event.find(params[:event_id]) if params[:event_id]
    @contest.event = @event if @contest
  end

  def set_contest
    @contest = Contest.find(params[:contest_id]) if params[:contest_id]
  end

  def set_organization
    @organization = Organization.find(current_user.organization.id)
  end
end