class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user= User.find(params[:id])
  end

  def new
    @company = Company.find(params[:company_id])
    @user = User.new
  end

  def new_employee
    @company = Company.find(params[:company_id])
    @user = User.new
  end

  def create
    @company = Company.find(params[:company_id])

    if params[:user][:is_owner] == "true"
      @user = User.new(user_params)
      @user.company_id = @company.id
      @user.title = "owner"
      if @user.save
        session[:user_id] = @user.id
        @company.update_attributes owner: @user
        flash[:notice] = " Hello, '#{@username}!"
        redirect_to root_path
      else
        render :new
      end
    else # is an employee
      @user = @company.employees.build(user_params)
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = " Hello, '#{@username}!"
        redirect_to root_path
      else
        render :new_employee
      end
    end


  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :phone_num,
      :title,
      :username,
      :born_on,
      :password,
      :password_confirmation,
      :access_lvl
    )
  end

end
