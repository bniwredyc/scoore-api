class V1::ContestsController < V1::BaseApiController

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def contest_params
    params.require(:contest).permit(:name,
                                    :start_datetime,
                                    :description,
                                    :discipline_id,
                                    :slug,
                                    :type,
                                    :athlete_ids => [],
                                    :event_judge_ids => [])
  end
end
