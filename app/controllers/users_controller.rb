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

    if params[:user][:is_owner]
      @user = User.new(user_params)
      @user.company_id = @company.id
    else # is an employee
      @user = @company.employees.build(user_params)
    end

    if @user.save
      if params[:user][:is_owner]
        session[:user_id] = @user.id
        @company.update_attributes owner: @user
      end
      flash[:message] = " Hello, '#{@username}!"
      redirect_to root_path
    else
      render :new
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
      :username,
      :born_on,
      :password,
      :password_confirmation,
      :access_lvl
    )
  end

end
