Category.destroy_all
categories = ['Smartphones', 'Shoes', 'Accessories']

categories.each do |category|
  cat = Category.create! name: category
  puts "se agrego la categoria: {cat.name}"
end