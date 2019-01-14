# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

melanie = User.create(username:"lil_macd", password:"password")
evan = User.create(username:"megax", password:"password")

deserts = List.create(name:"Deserts")
noms = List.create(name:"Noms")

cake = Recipe.create(name:"Chocolate Cake", recipe:"1. Mix ingrients 2. Bake 3. Eat", ingredients:"Chocolate, Flour, Sugar, Icing", time:"35 min")
pie = Recipe.create(name:"Chocolate Pie", recipe:"1. Mix ingrients 2. Bake 3. Eat", ingredients:"Chocolate, Flour, Sugar, Pie Crust", time:"65 min")


melanie.lists << deserts
deserts.recipes << cake

evan.lists << noms
noms.recipes << pie
