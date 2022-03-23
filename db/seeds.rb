# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
  Employee.create(
  first_name: "joe",
  last_name: "schmoe",
  email: "joe@example.com",
  phone: "123-4567",
  job_title: "Benefits Analyst",
  department_id: 1
)

  Employee.create(
  first_name: "jane",
  last_name: "schmoe",
  email: "jane@example.com",
  phone: "113-4567",
  job_title: "Benefits Coordinater",
  department_id: 1,
  admin: true
)

  Department.create(
  department_name: "HR",
  manager: "Jane Schmoe",
  code: "5000"
)

