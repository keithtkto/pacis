class Shift < ActiveRecord::Base
  belongs_to :user



  def logged_time_in_hr
    ((self.out_at - self.in_at)/3600).round(5)
  end

  def biweekly_pay(pay_period_ending, period)
    Shift.where(created_at: (pay_period_ending.midnight - period.day)..pay_period_ending.midnight)
  end

  def weekly_pay
    Shift.where(created_at: (DateTime.now.midnight - period.day)..Time.now.midnight)
  end





end
