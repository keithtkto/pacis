class User < ActiveRecord::Base
  belongs_to :company, dependent: :destroy

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
