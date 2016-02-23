# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

User.create( first_name: "jerry",
             last_name: "lee",
             email: "jl@pacis.com",
             phone_num: "111-111-1111",
             title: "manager",
             pay_rate: nil,
             born_on: "01/01/1989",
             username: "jl",
             access_lvl: 0,
             company_id: 1,
             password: "123",
             password_confirmation: "123",
             company_id: nil
            )

Company.create( name: "ga",
                field: "tech",
                country: "USA",
                timezone: "UTC-08:00"

  )


