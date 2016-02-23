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

  def create
    @company = Company.find(params[:company_id])
    @user = @company.users.build (user_params)

    if @user.save
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
      :password_confirmation
      )
  end

end
