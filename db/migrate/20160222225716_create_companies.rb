class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :field
      t.string :country
      t.datetime :timezone
      t.string :week_start_day
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
