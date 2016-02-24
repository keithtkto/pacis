class AddCheckinToShift < ActiveRecord::Migration
  def change
    add_column :shifts, :check_in, :boolean
    add_column :shifts, :logged_time, :decimal
  end
end
