class V1::JudgesController < V1::BaseApiController
  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def judge_params
    params.require(:judge).permit(:first_name,
                                  :last_name,
                                  :country,
                                  :city,
                                  :email,
                                  :discipline_id,
                                  :create_another)
  end
end
