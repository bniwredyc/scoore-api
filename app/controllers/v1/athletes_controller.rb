class V1::AthletesController < V1::BaseApiController

  def index
    if @contest.present?
      @athletes = @contest.athletes
    elsif @event.present?
      @athletes = @event.athletes
    else
      @athletes = @organization.athletes
    end

    @athletes = @athletes.order('last_name, first_name')
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def athlete_params
    params.require(:athlete).permit(:first_name,
                                    :last_name,
                                    :birth_date,
                                    :country,
                                    :city,
                                    :gender,
                                    :avatar,
                                    :tv_avatar,
                                    :years,
                                    :discipline_id,
                                    :create_another)
  end
end
