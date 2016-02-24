class Shift < ActiveRecord::Base
  belongs_to :user



  def logged_time_in_hr
    ((self.out_at - self.in_at)/3600).round(5)
  end




end
