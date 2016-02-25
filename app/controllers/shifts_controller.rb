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
    @shift = @user.shifts.build shift_params
    @shift.in_at = DateTime.now
    @shift.check_in = true
    if @shift.save
      redirect_to edit_user_shift_path(@user,@shift)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @shift = Shift.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @shift = Shift.find(params[:id])
    if @shift.update_attributes(shift_params)

      @shift.out_at = DateTime.now
      @shift.logged_time = @shift.logged_time_in_hr
        @shift.check_in = false
      if @shift.save
        redirect_to new_user_shift_path(@user)
      else
      render :edit
      end
    end
  end




  def destroy
    # @company = Company.find(params[:company_id])
    @user= User.find(params[:id])
    @user.destroy
    redirect_to company_users_path
  end


private
  def shift_params
    params.require(:shift).permit(
      :payed,
      :in_at,
      :out_at,
      :lat_in,
      :long_in,
      :lat_out,
      :long_out,
      :user_id
    )
  end
end
