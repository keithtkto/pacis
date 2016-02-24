class User < ActiveRecord::Base
  belongs_to :company # as employee
  has_many :owned_companies, foreign_key: "owner_id", class_name: "Company"

  has_many :shifts

  has_secure_password

  validates :email, presence: true, uniqueness: true
  # validates :username, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :title, presence: true


  def access
      if self.access_lvl == 3
        "Owner"
      elsif self.access_lvl == 2
        "Manager"
      else
        "Regular Employee"
      end
  end


private

  def self_pw
     self.password ||= self.first_name.chars.first + self.first_name.chars.first
  end
end
