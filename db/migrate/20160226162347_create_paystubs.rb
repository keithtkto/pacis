class CreatePaystubs < ActiveRecord::Migration
  def change
    create_table :paystubs do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :period
      t.float :current_pay_rate
      t.float :total_time
      t.decimal :amount
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
