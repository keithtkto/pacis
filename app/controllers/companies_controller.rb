class CompaniesController < ApplicationController
  def index
    if current_user
      redirect_to company_path(current_company)
    end

    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      redirect_to new_company_user_path(Company.last)
    else
      render :new
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])

    if @company.update_attributes(company_params)
      redirect_to company_users_path(:id)
    else
      render :edit
    end
  end


private
  def company_params
    params.require(:company).permit(
      :name,
      :field,
      :country,
      :timezone,
      :week_start_day,
      :owner_id
      )
  end
end
