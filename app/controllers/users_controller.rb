class UsersController < ApplicationController
  def index
    @users = User.all
    if current_user.access_lvl == 1
      redirect_to company_user_path(current_company.id,current_user.id)
    end
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

  def new_pw
    @company = Company.find(params[:company_id])
    @user = User.find(params[:id])
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
      @user.password = "123"
      @user.password_confirmation = "123"
      if @user.save
        @user.password = @user.first_name[0] + @user.last_name[0] + "123"
        @user.password_confirmation =  @user.first_name[0] + @user.last_name[0] +  "123"
        @user.save
        flash[:notice] = " Hello, '#{@username}!"
        redirect_to company_users_path(current_company)
      else
        render :new_employee
      end
    end


  end

  def edit
    @company = Company.find(params[:company_id])
    @user = User.find(params[:id])
  end

  def update
    @company = Company.find(params[:company_id])
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      session[:user_id] = @user.id
      redirect_to company_users_path(current_company)
    else
      render :edit
    end
  end




  def destroy
    # @company = Company.find(params[:company_id])
    @user= User.find(params[:id])
    @user.destroy
    redirect_to company_users_path
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
