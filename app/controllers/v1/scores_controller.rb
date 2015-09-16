class V1::ScoresController < V1::BaseApiController
  private
  def score_params
    params.require(:score).permit(:attempt_id, :judge_id, :value)
  end
end
