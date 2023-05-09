puts 'Removing the restaurants...'
Restaurant.destroy_all

def get_category(name)
  last_word = name.split.last.downcase
  categories.include?(last_word) ? last_word : categories.random
end

chefs = %w[Ameesha Andrew Anne Arthur Cai Connor Daniel🇸🇪 Daniel🇺🇸 Dave Donald Fontain Gui Joyce Joe Juan Jun Lucca Markus Fumi Mathieu Matthew Mei Philip Phu Rashon Rika Ryo Stefano Taylor Tsubasa X'Zaiver Yin]
categories = %W[burgers ramen sushi desserts healthy kebabs pizza tacos sandwiches dumplings soup curry rice pasta steakhouse vegan bakery juice salads seafood brunch wings cafe bbq deli pies buffet]

puts "Creating #{chefs.count} Restaurants..."
chefs.shuffle.each do |name|
  restaurant_name = Faker::Restaurant.name
  Restaurant.create!(
    name: "#{name}'s #{restaurant_name}",
    address: Faker::Address.street_address,
    rating: rand(1..5),
    category: get_category(restaurant_name)
  )
end
puts "...created #{Restaurant.count} restaurants"
