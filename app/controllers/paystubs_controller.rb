class PaystubsController < ApplicationController
  def index
    @paystubs = Paystub.all
  end

  def show
    @paystub = Paystub.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @shifts = @user.shifts.all
    @paystub = Paystub.new
  end

  def create
    @user = User.find(params[:user_id])
    @paystub = @user.paystubs.build paystub_params

    if @paystub.save
      redirect_to user_paystubs_path(:user_id)
    else
      render :new
    end
  end



private
  def paystub_params
    params.require(:paystub).permit(
      :start_date,
      :end_date,
      :period,
      :current_pay_rate,
      :total_time,
      :amount,
      :user_id
    )
  end


end

