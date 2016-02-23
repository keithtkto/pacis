Company.destroy_all
User.delete_all

keith = User.create(
  first_name: "Keith",
  last_name:  "To",
  email:      "kt@pacis.com",
  username:   "kt",
  phone_num:  "111-111-1112",
  born_on:    Date.parse("1-1-1986"),
  password:              "123",
  password_confirmation: "123"
)

ga = Company.create(
  name:     "General Assembly",
  field:    "Technology",
  country:  "USA",
  timezone: "UTC-08:00",
  owner:    keith
)

# keith.owned_companies << ga

ga.employees.create(
  first_name: "Jerry",
  last_name:  "Lee",
  email:      "jl@pacis.com",
  username:   "jl",
  phone_num:  "111-111-1111",
  title:      "manager",
  pay_rate:   nil,
  born_on:    Date.parse("1-1-1989"),
  access_lvl: 0,
  password:              "123",
  password_confirmation: "123"
)




