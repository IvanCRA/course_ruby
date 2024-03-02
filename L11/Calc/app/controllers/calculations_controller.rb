class CalculationsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new
    @calculation = Calculation.new()
  end

  def index
    @calculations = Calculation.all
  end

  def create
    if Calculation.new(params[:calculation].permit(:source_numbers)).valid?
      @calculation = Calculation.new(params[:calculation].permit(:source_numbers))
      if @calculation.save
      redirect_to calculations_path
      else
      render 'new'
      end
    else
      redirect_to calculations_path
    end
    
  end

  def destroy
    @calculation = Calculation.find(params[:id])
    @calculation.destroy
    redirect_to calculations_path
  end
  def result
    @res = Calculation.all
    render xml: @res
  end
end
