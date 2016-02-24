class ShiftsController < ApplicationController
    def index
      @shifts = Shift.all
    end

    def show
      @shift= Shift.find(params[:id])
    end

    def new
      @user = User.find(params[:user_id])
      @shift = Shift.new
    end

    def create
      @user = User.find(params[:user_id])

      end


    end

    def edit
      @user = User.find(params[:user_id])
      @shift = Shift.find(params[:id])
    end

    def update
      @user = User.find(params[:user_id])
      @shift = Shift.find(params[:id])
      if @shift.update_attributes(user_params)
        redirect_to company_user_path(current_company)
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
