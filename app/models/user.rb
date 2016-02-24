class User < ActiveRecord::Base
  belongs_to :company # as employee
  has_many :owned_companies, foreign_key: "owner_id", class_name: "Company"

  has_secure_password

  validates :email, presence: true, uniqueness: true
  # validates :username, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :title, presence: true




private

  def self_pw
     self.password ||= self.first_name.chars.first + self.first_name.chars.first
  end
end
