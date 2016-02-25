class Company < ActiveRecord::Base
  has_many :employees, dependent: :destroy, class_name: "User"
  belongs_to :owner, class_name: "User"

  validates :name, presence: true
  # validates :owner_id, presence: true
  # validates :timezone, presence: true


  # def country_name
  #   country = ISO3166::Country[country_code]
  #   country.translations[I18n.locale.to_s] || country.name
  # end

end


