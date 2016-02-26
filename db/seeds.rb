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

pacis = Company.create(
  name:     "Pacis",
  field:    "Technology",
  country:  "USA",
  timezone: "UTC-08:00",
  owner:    keith
)

keith.company_id = pacis.id
keith.save

# keith.owned_companies << ga

jerry = pacis.employees.create(
  first_name: "Jerry",
  last_name:  "Lee",
  email:      "jl@pacis.com",
  username:   "jl",
  phone_num:  "111-111-1111",
  title:      "Junior Dev",
  pay_rate:   30.00,
  born_on:    Date.parse("1-1-1989"),
  access_lvl: 1,
  password:              "123",
  password_confirmation: "123"
)

tim = pacis.employees.create(
  first_name: "Tim",
  last_name:  "Kim",
  email:      "tk@pacis.com",
  username:   "tk",
  phone_num:  "111-111-1111",
  title:      "Scrum Master",
  pay_rate:   30.00,
  born_on:    Date.parse("1-4-1989"),
  access_lvl: 2,
  password:              "123",
  password_confirmation: "123"
)

jerry_n = pacis.employees.create(
  first_name: "Jerry",
  last_name:  "Ngov",
  email:      "jn@pacis.com",
  username:   "jn",
  phone_num:  "111-111-1111",
  title:      "Senior Dev",
  pay_rate:   30.00,
  born_on:    Date.parse("1-1-1990"),
  access_lvl: 1,
  password:              "123",
  password_confirmation: "123"
)



jerry.shifts.create (
 in_at: DateTime.parse("02/02/2016"),
 out_at: DateTime.parse("02/03/2016"),
 lat_in: 34.0500,
 long_in: 118.2500,
 lat_out: 34.0500,
 long_out: 118.2500,
 check_in: false,
 logged_time: 24
)

jerry.shifts.create (
 in_at: DateTime.parse("01/02/2016"),
 out_at: DateTime.parse("02/02/2016"),
 lat_in: 34.0500,
 long_in: 118.2500,
 lat_out: 34.0500,
 long_out: 118.2500,
 check_in: false,
 logged_time: 24
)

jerry.shifts.create (
 in_at: DateTime.parse("12/02/2016"),
 out_at: DateTime.parse("13/02/2016"),
 lat_in: 34.0500,
 long_in: 118.2500,
 lat_out: 34.0500,
 long_out: 118.2500,
 check_in: false,
 logged_time: 24
)

tim.shifts.create (
 in_at: DateTime.parse("21/02/2016"),
 out_at: DateTime.parse("22/02/2016"),
 lat_in: 34.0500,
 long_in: 118.2500,
 lat_out: 34.0500,
 long_out: 118.2500,
 check_in: false,
 logged_time: 24
)

tim.shifts.create (
 in_at: DateTime.parse("02/02/2016"),
 out_at: DateTime.parse("03/02/2016"),
 lat_in: 34.0500,
 long_in: 118.2500,
 lat_out: 34.0500,
 long_out: 118.2500,
 check_in: false,
 logged_time: 24
)

jerry_n.shifts.create (
 in_at: DateTime.parse("12/02/2016"),
 out_at: DateTime.parse("13/03/2016"),
 lat_in: 34.0500,
 long_in: 118.2500,
 lat_out: 34.0500,
 long_out: 118.2500,
 check_in: false,
 logged_time: 24
)

jerry_n.shifts.create (
 in_at: DateTime.parse("11/02/2016"),
 out_at: DateTime.parse("12/03/2016"),
 lat_in: 34.0500,
 long_in: 118.2500,
 lat_out: 34.0500,
 long_out: 118.2500,
 check_in: false,
 logged_time: 24
)

jerry_n.shifts.create (
 in_at: DateTime.parse("11/02/2016"),
 out_at: DateTime.parse("12/03/2016"),
 lat_in: 34.0500,
 long_in: 118.2500,
 lat_out: 34.0500,
 long_out: 118.2500,
 check_in: false,
 logged_time: 24
)

jerry_n.shifts.create (
 in_at: DateTime.parse("02/02/2016"),
 out_at: DateTime.parse("02/03/2016"),
 lat_in: 34.0500,
 long_in: 118.2500,
 lat_out: 34.0500,
 long_out: 118.2500,
 check_in: false,
 logged_time: 24
)



