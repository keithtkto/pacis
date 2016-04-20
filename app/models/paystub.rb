class Paystub < ActiveRecord::Base
  belongs_to :user


  def pp
    if self.period == 6
      "Weekly"
    elsif self.period == 14
      "Biweekly"
    else
      "Monthly"
    end
  end

end
