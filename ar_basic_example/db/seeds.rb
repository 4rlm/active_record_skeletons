def seed_dog_table
  puts "Seeding the dog table..."
  total_seeds_required = 10
  current_seeds_in_db = Dog.count
  seeds_to_create = total_seeds_required - current_seeds_in_db

  seeds_to_create.times do
    dog_hash = {
      name: Faker::Name.first_name
    }
    new_dog_record = Dog.new(dog_hash)
    new_dog_record.save!
  end

end

def seed_judge_table
  puts "Seeding the judge table..."
  total_seeds_required = 10
  current_seeds_in_db = Judge.count
  seeds_to_create = total_seeds_required - current_seeds_in_db

  seeds_to_create.times do
    judge_hash = {
      name: Faker::Name.first_name
    }
    new_dog_record = Judge.new(judge_hash)
    new_dog_record.save!
  end

end

seed_dog_table
seed_judge_table
