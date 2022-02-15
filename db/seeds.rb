require 'faker'

10.times do
  pet = Pet.create!(
    name: Faker::Kpop.boy_bands,
    address: Faker::Address.street_address,
    found_on: Date.today - rand(1..10).days,
    species: %w[cat fish hamster racoon dog].sample
  )
  puts "Created pet #{pet.id}"
end
