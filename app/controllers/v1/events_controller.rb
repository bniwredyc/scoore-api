class V1::EventsController < V1::BaseApiController

  def index
    @events = Event.all
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:name, :description, :location, :start_date, :end_date, :slug, :discipline_id)
  end
end
