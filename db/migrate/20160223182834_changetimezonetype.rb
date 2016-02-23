class Changetimezonetype < ActiveRecord::Migration
  def change
    change_column :companies, :timezone, :string
  end
end
