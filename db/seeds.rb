# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

melanie = User.create(username:"lil_macd", password:"password", admin:true)
evan = User.create(username:"megax", password:"password")

deserts = List.create(name:"Desserts")
noms = List.create(name:"Muffins")

pie = Recipe.create(name:"Chocolate Peanut Butter Pie", recipe:"For the crust: Preheat the oven to 350 degrees F. Crush the cookies until they're fine crumbs. Pour the melted butter over the top and stir with a fork to combine. Press into a pie pan and bake until set 5 to 7 minutes. Remove from the oven and allow to cool completely., For the filling: Beat the peanut butter with the cream cheese until smooth. Add the powdered sugar and beat until smooth. Add in the thawed whipped topping and beat until smooth, scraping the sides as needed., Pour the filling into the crust, evening out the top with a knife or spatula. Chill for at least an hour before serving. ", ingredients:"25 whole chocolate sandwich cookies, 4 tablespoons butter melted, 1 cup creamy peanut butter, One 8-ounce package cream cheese softened, 1 1/4 cups powdered sugar, One 8-ounce package whipped topping such as Cool Whip thawed", time:"1 hr 25 min")
cake = Recipe.create(name:"Strawberry Shortcake ", recipe:"Mix strawberries with 3 tablespoons sugar and refrigerate while juices develop at least 30 minutes, Preheat the oven to 400 degrees F, Sift together the flour, baking powder, baking soda, remaining 2 tablespoons sugar, and salt in a medium bowl. Add heavy cream and mix until just combined. Place mixture in an ungreased 8-inch square pan and bake until golden 18 to 20 minutes., Remove shortcake from pan and place on a rack to cool slightly. Cut into 6 pieces and split each piece in half horizontally., Spoon some of the strawberries with their juice onto each shortcake bottom. Top with a generous dollop of whipped cream and then the shortcake top. Spoon more strawberries over the top and serve., Using a mixer, beat the heavy cream and sugar and  vanilla and lemon zest until soft peaks form about 1 1/2 to 2 minutes. ", ingredients:"1 1/2 pounds strawberries stemmed and quartered, 5 tablespoons sugar, 2 cups all-purpose flour, 2 teaspoons baking powder, 1/4 teaspoon baking soda, 2 tablespoons sugar, 3/4 teaspoon salt, 1 1/2 cups heavy cream, Whipped Cream", time:"65 min")


melanie.lists << deserts
deserts.recipes << cake

evan.lists << noms
noms.recipes << pie
