class PatternsController < ApplicationController

  def index
    @patterns = Pattern.all
    respond_with(@patterns)
  end

  def show
    @pattern = Pattern.find_by(company_id: params[:id])
    respond_with(@pattern)
  end

end
