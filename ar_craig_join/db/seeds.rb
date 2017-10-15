def seed_tables(seeds_required)
  puts "Seeding the database ..."
  current_seeds_in_db = Article.count
  seeds_to_create = seeds_required - current_seeds_in_db

  seeds_to_create.times do
    article_hash = { title: Faker::Job.title,
                    description: Faker::Seinfeld.quote,
                    author: Faker::Name.name,
                    email: Faker::Internet.safe_email,
                    price: Faker::Number.decimal(2) }
    article = Article.find_or_initialize_by(article_hash)
    article.category = Category.find_or_create_by(name: Faker::Superhero.descriptor)
    article.save
  end

end

seeds_required = 20
seed_tables(seeds_required)
