class V1::PerformancesController < V1::BaseApiController
  private
  def performance_params
    # TODO: принимать type менять его на type_cd
    params.require(:performance).permit(:parent_id,
                                          :contest_id,
                                          :athlete_id,
                                          :sort,
                                          :type_cd,
                                          :is_active)
  end
end
