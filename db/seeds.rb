# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
countries = Country.create([{ name: "China", us_imports: "29.8", min_wage: "156", image: "china.png" }, { name: "Vientnam", us_imports: "9.3", min_wage: "90", poverty: "4.8", image: "vietnam.png" }, { name: "India", us_imports: "3.4", min_wage: "70", poverty: "21.3", image: "india.png" }, { name: "Bangladesh", us_imports: "4.8", min_wage: "68", poverty: "43.7", image: "bangladesh.png"  }, { name: "Indonesia", us_imports: "4.8", min_wage: "74", poverty: "15.9", image: "indonesia.png" }, { name: "Mexico", us_imports: "3.7", min_wage: "127", poverty: "3.8", image: "mexico.png" }, { name: "Honduras", us_imports: "2.6", min_wage: "339", poverty: "15.5", image: "honduras.png" }, { name: "Cambodia", us_imports: "2.5", min_wage: "100", poverty: "9.97", image: "cambodia.png" }, { name: "El Salvador", us_imports: "1.9", min_wage: "203", poverty: "7.24", image: "el_salvador.png" }, { name: "Sri Lanka", us_imports: "1.8", min_wage: "66", image: "sri_lanka.png" }])
