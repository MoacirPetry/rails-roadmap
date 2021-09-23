namespace :category do

  desc 'Clean all Categories'
  task clean: :environment do
    Category.delete_all
    puts 'Done - Deleted all categories!!'
  end

  desc 'Creating Categories'
  task create: :environment do
		if (ARGV.size == 2) && (ENV['n'] != "")
	  	ENV['n'].to_i.times do |i|
				# name = Faker::Commerce.department
				name = Faker::Commerce.department
				category = "Category #{i} = #{name}"
				puts "Registering... -> #{category}"
				Category.create(name: name)
		  end
		else
			puts 'You need inform the quantity of categories!'
			puts 'e.g. rake category:create n=40'
		end
  end
end