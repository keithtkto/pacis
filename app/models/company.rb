class Company < ActiveRecord::Base
  has_many :users
  # validates :name, presence: true
  # validates :owner_id, presence: true
  # validates :timezone, presence: true
end

