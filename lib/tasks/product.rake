namespace :product do

  desc 'Clean all Products'
  task clean: :environment do
    Product.delete_all
    puts 'Done - Deleted all products!!'
  end

  desc 'Creating Products'
  task create: :environment do
		if (ARGV.size == 2) && (ENV['n'] != "")
	  	ENV['n'].to_i.times do |i|
				# name = Faker::Food.dish
				name = Faker::Commerce.product_name
				category = Category.all.sample
				product = "#{name} - with this Category #{category.name}"
				puts "Registering... -> #{product}"
				Product.create(name: name, category: category)
		  end
		else
			puts 'You need inform the quantity of products!'
			puts 'e.g. rake product:create n=40'
		end
  end
end