# def seed_tables(seeds_required)
#   puts "Seeding the database ..."
#   current_seeds_in_db = Entry.count
#   seeds_to_create = seeds_required - current_seeds_in_db
#
#   seeds_to_create.times do
#     entry_hash = { author: Faker::Seinfeld.character,
#                   title: Faker::Seinfeld.quote,
#                   body: Faker::Lorem.paragraph(2) }
#     entry = Entry.find_or_initialize_by(entry_hash)
#     entry.tags << Tag.find_or_create_by(tag_name: Faker::Superhero.descriptor)
#     entry.tags << Tag.find_or_create_by(tag_name: Faker::Superhero.descriptor)
#     entry.save
#   end
#
# end
#
# seeds_required = 20
# seed_tables(seeds_required)
