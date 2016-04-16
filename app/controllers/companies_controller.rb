class CompaniesController < ApplicationController

  respond_to :html, :json

  def index
    @companies = Company.all
    respond_with(@companies)
  end

  def new
    @company = Company.new()
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path
    else
      render :new
    end
  end

  def company_params
    params.require(:company).permit(:name)
  end

end
