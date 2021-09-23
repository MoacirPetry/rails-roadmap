namespace :setup do
  desc 'Deleting all values'
  task clean: :environment do
    # How to use: rake setup:clean
    Rake::Task['product:clean'].execute
    Rake::Task['category:clean'].execute
    puts 'Done - Deleted all records!!'
  end

  desc 'Creating all values'
  task create: :environment do
    # How to use: rake setup:create
    Rake::Task['category:create'].execute
    Rake::Task['product:create'].execute
    puts 'Done - Created all records!!'
  end

end