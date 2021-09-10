puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-2020",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-2021",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-2019",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-2020",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-2017",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data
Student.create(
  name: "Christine",
  age: 28,
  cohort_id: c2.id
)

Student.create(
  name: "Allie",
  age: 26,
  cohort_id: c2.id
)

Student.create(
  name: "Ben",
  age: 24,
  cohort_id: c1.id
)

Student.create(
  name: "Josh",
  age: 19,
  cohort_id: c3.id
)

Student.create(
  name: "Mary",
  age: 19,
  cohort_id: c4.id
)

puts "Done!"