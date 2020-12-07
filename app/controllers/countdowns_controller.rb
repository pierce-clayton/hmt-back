class CountdownsController < ApplicationController
  before_action :set_countdown, only: [:show, :update, :destroy]

  # GET /countdowns
  def index
    @countdowns = Countdown.all

    render json: @countdowns
  end

  # GET /countdowns/1
  def show
    render json: @countdown
  end

  # POST /countdowns
  def create
    @countdown = Countdown.new(countdown_params)

    if @countdown.save
      render json: @countdown, status: :created, location: @countdown
    else
      render json: @countdown.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /countdowns/1
  def update
    if @countdown.update(countdown_params)
      render json: @countdown
    else
      render json: @countdown.errors, status: :unprocessable_entity
    end
  end

  # DELETE /countdowns/1
  def destroy
    @countdown.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_countdown
      @countdown = Countdown.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def countdown_params
      params.require(:countdown).permit(:date, :name, :user_id)
    end
end
