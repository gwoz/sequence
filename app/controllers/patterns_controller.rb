class PatternsController < ApplicationController

  def index
    @patterns = Pattern.all
  end

  def show
    @pattern = Pattern.find_by(company_id: params[:id])
  end

end
