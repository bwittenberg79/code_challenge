class ResponseDataController < ApplicationController
  before_action :set_response_datum, only: [:show, :update, :destroy]

  # GET /response_data
  def index
    @response_data = ResponseDatum.all

    render json: @response_data
  end

  # GET /response_data/1
  def show
    render json: @response_datum
  end

  # POST /response_data
  def create
    @response_datum = ResponseDatum.new(response_datum_params)

    if @response_datum.save
      render json: @response_datum, status: :created, location: @response_datum
    else
      render json: @response_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /response_data/1
  def update
    if @response_datum.update(response_datum_params)
      render json: @response_datum
    else
      render json: @response_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /response_data/1
  def destroy
    @response_datum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response_datum
      @response_datum = ResponseDatum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def response_datum_params
      params.require(:response_datum).permit(:uuid, :response)
    end
end
