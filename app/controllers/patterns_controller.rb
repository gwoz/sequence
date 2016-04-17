class PatternsController < ApplicationController

  def index
    @patterns = Pattern.all
    respond_with(@patterns)
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
    params.require(:pattern).permit(:description, :company_id)
  end

end
