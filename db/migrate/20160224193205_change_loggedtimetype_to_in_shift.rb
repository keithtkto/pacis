class ChangeLoggedtimetypeToInShift < ActiveRecord::Migration
  def change
    change_column :shifts, :logged_time, :float
  end


end
