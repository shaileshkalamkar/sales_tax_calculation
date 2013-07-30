# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


SalesItemType.create(name: "Book")
SalesItemType.create(name: "Food")
SalesItemType.create(name: "Medical")
SalesItemType.create(name: "Other")

book_type = SalesItemType.where(:name => "Book").first
food_type = SalesItemType.where(:name => "Food").first
medical_type = SalesItemType.where(:name => "Medical").first
other_type = SalesItemType.where(:name => "Other").first

SalesItem.create(:name => "The godfather",
                 :price => 12.49,
                 :is_imported => false,
                 :sales_item_type_id => book_type.id)
SalesItem.create(:name => "Shakira Music CD",
                 :price => 14.99,
                 :is_imported => false,
                 :sales_item_type_id => other_type.id)
SalesItem.create(:name => "Dark chocolate bar",
                 :price => 0.85,
                 :is_imported => false,
                 :sales_item_type_id => food_type.id)
SalesItem.create(:name => "Ghirardelli chocolates",
                 :price => 10.00,
                 :is_imported => true,
                 :sales_item_type_id => food_type.id)
SalesItem.create(:name => "Amway Men's perfume",
                 :price => 47.50,
                 :is_imported => true,
                 :sales_item_type_id => other_type.id)
SalesItem.create(:name => "Oriflem Men's perfume",
                 :price => 27.99,
                 :is_imported => true,
                 :sales_item_type_id => other_type.id)
SalesItem.create(:name => "Nise pills pack",
                 :price => 9.75,
                 :is_imported => false,
                 :sales_item_type_id => medical_type.id)
SalesItem.create(:name => "Bruge chocolate bunch",
                 :price => 11.25,
                 :is_imported => true,
                 :sales_item_type_id => food_type.id)
SalesItem.create(:name => "Tiger eyes by SRK",
                 :price => 18.99,
                 :is_imported => false,
                 :sales_item_type_id => other_type.id)




