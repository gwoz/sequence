class PatternsController < ApplicationController

  def index
    patterns = Pattern.all
    render json: patterns
  end

  def new
  end

  def create
    @pattern = Pattern.create(pattern_params)
    render json: @pattern
  end

  def show
    @pattern = Pattern.find(params[:id])
    respond_with(@pattern)
  end


  private

  def pattern_params
    params.require(:pattern).permit(:name, :description, :company_id)
  end

end
