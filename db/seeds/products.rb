Product.destroy_all

products = [
  { name: 'iPhone 12', description: '5G speed and the fastest chip in a smartphone', stock: 10, price: 900, sku: 'AIX0120', category: 'Smartphones' },
  { name: 'Xiaomi Mi Mix 3', description: 'Borderless powerfull, super camera', stock: 12, price: 400, sku: 'XMM0312', category: 'Smartphones' },
  { name: 'Xiaomi Pocophone', description: 'The Best Phone for Millennials', stock: 15, price: 300, sku: 'XPP0313', category: 'Smartphones' },
  { name: 'Samsung S10', description: 'Beautiful, elegant, powerful phone', stock: 10, price: 900, sku: 'S100901', category: 'Smartphones' },
  { name: 'Zico Beach Sandals', description: 'The best sandals ever!', stock: 50, price: 5, sku: 'ZSD009', category: 'Shoes' },
  { name: 'Adidas Superstart', description: 'The Old School Sneakers', stock: 13, price: 60, sku: 'ASS090', category: 'Shoes' },
  { name: 'Timberland Premium', description: 'The classic yellow boots', stock: 15, price: 100, sku: 'TPB132', category: 'Shoes' },
  { name: 'Men Wallet', description: 'Waterproof leather wallet', stock: 50, price: 20, sku: 'MW2323', category: 'Accessories' },
  { name: 'keychain', description: 'Keep your keys together. Safe', stock: 60, price: 2, sku: 'KC3245', category: 'Accessories' },
  { name: 'Casio L12 Watch', description: 'Never be late again, arrive o time', stock: 8, price: 50, sku: 'CW7788', category: 'Accessories' }
]

products.each do |product|
  cat = Category.find_by(name: product[:category])
  prod = Product.create! name: product[:name], description: product[:description], stock: product[:stock], price: product[:price], sku: product[:sku]
  prod.categories << cat

  puts "Se agrego el producto: #{prod.name}"
end