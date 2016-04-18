class CompaniesController < ApplicationController

  def index
    companies = Company.all
    render json: companies
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

  def show
    @company = Company.find(params[:id])
    respond_with(@company)
  end


  private

  def company_params
    params.require(:company).permit(:name)
  end

end
