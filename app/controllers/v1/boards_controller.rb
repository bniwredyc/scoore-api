class V1::BoardsController < V1::BaseApiController
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def board_params
      params.require(:board).permit(:event_id,
                                    :main,
                                    :template,
                                    :contest_ids => [])
    end
end
