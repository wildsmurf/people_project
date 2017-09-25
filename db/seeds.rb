20.times do
  Person.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
                age: Faker::Number.between(1, 100), hair_color: Faker::Color.color_name,
                eye_color: Faker::Color.color_name, gender: Faker::GameOfThrones.house)
end
