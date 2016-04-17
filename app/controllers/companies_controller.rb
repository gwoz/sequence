class CompaniesController < ApplicationController

  def index
    @companies = Company.all
    respond_with(@companies)
  end

  def new
    @company = Company.new()
    respond_with(@company)
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path
    else
      render :new
    end
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end

end
