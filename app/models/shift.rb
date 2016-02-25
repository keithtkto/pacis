class Shift < ActiveRecord::Base
  belongs_to :user



  def logged_time_in_hr
    ((self.out_at - self.in_at)/3600).round(5)
  end

  def biweekly_pay
    Shift.where(created_at: (DateTime.now - 14.day)..Time.now.midnight)
  end

  def biweekly_pay
    Shift.where(created_at: (DateTime.now - 7.day)..Time.now.midnight)
  end





end
