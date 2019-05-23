class InmateCrimesController < ApplicationController
  def new
    @inmate = Inmate.find(params[:inmate_id])
    @inmate_crime = InmateCrime.new
  end

  def create
    @inmate = Inmate.find(params[:inmate_id])
    @inmate_crime = nil
    Crime.where(id: params[:inmate_crime][:crime_id]).each do |crime|
      @inmate_crime = InmateCrime.new(crime: crime)
      @inmate_crime.inmate = @inmate
      @inmate_crime.save
    end
    if @inmate_crime.valid?
      redirect_to prison_path(@inmate.prison)
    else
      render :new
    end
  end

  private

  def inmate_crime_params
    params.require(:inmate_crime).permit(:crime_id)
  end
end
