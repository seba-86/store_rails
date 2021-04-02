["Smartphones", "Shoes", "Accesories","T-Shirt"].each do |name|
    Category.create name: name
end

puts "Categories has been created"