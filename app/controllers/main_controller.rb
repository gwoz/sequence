class MainController < ApplicationController

  def index
    @company = Company.first
  end

end
