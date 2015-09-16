class V1::AttemptsController < V1::BaseApiController
  def index
    # now = Time.now
    # # Это лучшая часть вообще всего кода Scoore
    # # so true :)
    # @attempts = Attempt
    # .includes({:performance => :athlete}, :scores)
    # .where('performances.contest_id' => Contest.where(event_id: @event_judge.event_id).pluck(:id)).references(:performances)
    # .where('start_datetime <= ?', now)
    # .where.not(id: Score.where(judge_id: @event_judge.judge_id).pluck(:attempt_id))
  end

  private

  def attempt_params
    params.require(:attempt).permit(:performance_id,
                                    :sort)
  end

end
