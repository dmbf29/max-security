class InmatesController < ApplicationController
  before_action :set_prison, only: [:new, :create]

  def new
    @inmate = Inmate.new
  end

  def create
    @inmate = Inmate.new(inmate_params)
    @inmate.prison = @prison
    if @inmate.save
      redirect_to prison_path(@prison)
    else
      render :new
    end
  end

  def destroy
    @inmate = Inmate.find(params[:id])
    @inmate.destroy
    redirect_to prison_path(@inmate.prison)
  end

  private

  def inmate_params
    params.require(:inmate).permit(:name, :image_url, :crime, :death_row)
  end

  def set_prison
    @prison = Prison.find(params[:prison_id])
  end
end
