class V1::DisciplinesController < V1::BaseApiController
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def discipline_params
      params.require(:discipline).permit(:name,
                                         :description)
    end
end
