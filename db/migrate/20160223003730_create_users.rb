class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_num
      t.string :title
      t.decimal :pay_rate
      t.string :born_on
      t.string :username
      t.integer :access_lvl
      t.references :company, index: true, foreign_key: true
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
