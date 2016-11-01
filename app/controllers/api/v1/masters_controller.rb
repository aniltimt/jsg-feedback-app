class Api::V1::MastersController < ApplicationController

  before_action :set_default_response_format

  # POST /feedback_create
  # POST /feedback_create.json
  def feedback_create
  	begin
    feedback = Feedback.new(:crew_name => params[:crew_name], :passanger_name => params[:passanger_name], :status => params[:status], 
    	:aircraft_name => params[:aircraft_name], :video => params[:video], :feedback_text => params[:feedback_text])

    if feedback.save      
      render json: { message: "Success", status: true, :data => feedback }, status: 200
      return
    else
      render json: { message: "Failed", status: false }, status: 200
      return
    end

    rescue => error
      logger.warn "Internal server error: #{error}"
      render json: { message: "Sorry data invalid", status: false }, status: 500
    end
  end

  protected
    def set_default_response_format
      request.format = :json
    end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def feedback_params
      #params.require(:feedback).permit(:title,:video)
      #params.fetch(:feedback, {})      
    end
end