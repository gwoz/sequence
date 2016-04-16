class CompaniesController < ApplicationController

  respond_to :html, :json

  def index
    @companies = Company.all
    respond_with(@companies)
  end

  def new
    @company = Company.new
  end

end
