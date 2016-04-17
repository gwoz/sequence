class PatternsController < ApplicationController

  def index
    patterns = Pattern.all
    render json: patterns
  end

  def new
    @pattern = Pattern.new()
    respond_with(@pattern)
  end

  def create
    @pattern = Pattern.new(pattern_params)
    if @pattern.save
      redirect_to patterns_path
    else
      render :new
    end
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
