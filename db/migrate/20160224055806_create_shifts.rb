class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.boolean :payed
      t.datetime :in_at
      t.datetime :out_at
      t.float :lat_in
      t.float :long_in
      t.float :lat_out
      t.float :long_out
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
