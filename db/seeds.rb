# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating Fake Restaurants"
daphnes = Restaurant.new(name: "Daphne's", description: "Traditional Italian Dining", category: "Italian", address: "114 Draycott Ave, Chelsea, SW3 3AE")
daphnes.save!
scotts = Restaurant.new(name: "Scott's", description: "Dining and Cocktails in Mayfair", category: "British", address: "20 Mount Street, London, W1K 2HE")
scotts.save!
balthazar = Restaurant.new(name: "Balthazar", description: "French brasserie-style classics", category: "French", address: "4-6 Russell Street, Covent Garden, WC2B 5HZ")
balthazar.save!
sexyfish = Restaurant.new(name: "Sexy Fish", description: "Asain restaurant serving Japanese-inspired sushi", category: "Japanese", address: "Berkeley Square House, Berkeley Square, W1J 6BR")
sexyfish.save!
jsheeky = Restaurant.new(name: "J Sheeky", description: "Iconic London Fish Restaurant", category: "British", address: "28-32 St Martin's Court London WC2N 4AL")
jsheeky.save!

puts "Creating Menus"

a_la_carte = Menu.new(tasting: false, discount: 0, restaurant_id: 1)
tasting = Menu.new(tasting: true, discount: 15, restaurant_id: 1)


puts "Creating fake dishes"

meal_category = ["appetizer", "antipasti", "starter", "main", "dessert", "primi", "sharing", "sides", "cheese" ]
dietary = ["None", "Gluten Free", "Vegan", "Vegetarian"]
menu = ["A la carte", "Tasting Menu"]

minestrone = Dish.new(name:"Minestrone" , cost: 900 ,meal_category: meal_category[3] ,dietary: dietary[4] ,instructions: "Ready to serve" ,prep_time: 0 )
minestrone.save!
MenuItem.create(menu: a_la_carte, dish: minestrone)

salmontartare = Dish.new(name:"Salmon Tartare" , cost: 1100 ,meal_category: meal_category[3] ,dietary: dietary[0] ,instructions: "Ready to serve" ,prep_time: 0 )
salmontartare.save!
MenuItem.create(menu: a_la_carte, dish: salmontartare)
MenuItem.create(menu: tasting, dish: salmontartare)


coppa = Dish.new(name:"Coppa with Red William Pear" , cost: 1000 ,meal_category: meal_category[3] ,dietary: dietary[0] ,instructions: "Ready to serve" ,prep_time: 0 )
coppa.save!
MenuItem.create(menu: a_la_carte, dish: coppa)

chicken_milanese = Dish.new(name:"Chicken Milanese with Rocket & Shaved Parmesan" , cost: 1400 ,meal_category: meal_category[3] ,dietary: dietary[0] ,instructions: "Ready to serve" ,prep_time: 0 )
chicken_milanese.save!
MenuItem.create(menu: a_la_carte, dish: chicken_milanese)
MenuItem.create(menu: tasting, dish: chicken_milanese)

rigatoni = Dish.new(name:"Rigatoni with Roast Romano Pepper & Aubergines" , cost: 1100 ,meal_category: meal_category[3] ,dietary: dietary[4] ,instructions: "1. Heat the sauce in a pan
2. Add the provided pasta water to the sauce
3. Add the pasta and heat for 2min
4. Plate!" ,prep_time: 5 )
rigatoni.save!
MenuItem.create(menu: a_la_carte, dish: rigatoni)

hake = Dish.new(name:"Hake Fillet with Borlotti Beans & Mussels" , cost: 1500 ,meal_category: meal_category[3] ,dietary: dietary[0] ,instructions: "1. Heat olive oil in a searing pan
2. Pan the fish skin side down and cover for 4min" ,prep_time: 5 )
hake.save!
MenuItem.create(menu: a_la_carte, dish: hake)

polenta_cake = Dish.new(name:"Amalfi Lemon Polenta Cake with Mascarpone" , cost: 900 ,meal_category: meal_category[4] ,dietary: dietary[1] ,instructions: "Ready to serve" ,prep_time: 0 )
polenta_cake.save!
MenuItem.create(menu: a_la_carte, dish: polenta_cake)
MenuItem.create(menu: tasting, dish: polenta_cake)

pistachio_cream = Dish.new(name:"Pistachio Ice Cream with Chocolate Sauce" , cost: 700 ,meal_category: meal_category[4] ,dietary: dietary[2] ,instructions: "Ready to serve" ,prep_time: 0 )
pistachio_cream.save!
MenuItem.create(menu: a_la_carte, dish: pistachio_cream)

puts "Creating fake wines"

brunello = Wine.new(name:"Berry Bros. & Rudd Brunello di Montalcino by La Màgia, Tuscany, Italy" , cost: 3500 , year: "2015" , description: "With its bright ruby colour, this is a finely crafted Brunello from the celebrated 2015 vintage. Inviting aromas of morello cherries and dried herbs lead to a palate layered with forest fruits, earth and a gentle lift of wood spice. Thirty-six months in old French oak tonneaux has added further complexity to the wine, rounding out the fine, supple tannins on the finish. This is classically styled Brunello of purity and finesse. Drink now to 2030.")

brunello.dish_id = minestrone
brunello.save!

languedoc_roussillon = Wine.new(name:"Antech, Crémant de Limoux, Expression, Brut, Languedoc" , cost: 1995 , year: "2017" , description: "The appellation of Crémant de Limoux was introduced in 1990 to allow a higher percentage of Chenin Blanc and Chardonnay in the traditional blend of Limoux sparkling wines. AOC regulations require that the wine is aged for a least a year on the lees prior to disgorgement.")

languedoc_roussillon.dish_id = salmontartare
languedoc_roussillon.save!

gabo_do_xil = Wine.new(name:"Gaba do Xil, Mencía, Telmo Rodríguez, Valdeorras, Spain" , cost: 1650 , year: "2017" , description: "Mencía is the primary grape of the Bierzo region and its undisputed star, covering nearly two-thirds of the vineyards. This red grape variety is grown almost exclusively in north-western part of Spain (especially in the DOs of Galicia, Valdeorras, Monterrei, and Ribeira Sacra). Mencía ripens early, by mid-September, and is well suited to the maritime climate of Bierzo where autumn rains are quite common.")

gabo_do_xil.dish_id = coppa
gabo_do_xil.save!

galia = Wine.new(name:"Galia, El Regajal, Spain" , cost: 3768 , year: "2017" , description: "The wine is fragrant and open, with good ripeness and no excess. The oak is nicely integrated; the wine aged in a combination of barriques, 600-liter vats and 1,200-liter foudres (and later even 2,500-liter ones), and some concrete eggs, which seem to have provided the it with an elegant, polished and sleek texture. The palate is very balanced and with a good combination of power and elegance. The Garnacha clearly adds a heady touch in the finish, where for a second it took me to Châteauneuf-du-Pape.")

galia.dish_id = chicken_milanese
galia.save!

bourgogne_aligote = Wine.new(name:"Bourgogne Aligoté, Domaine Marc Colin, Burgundy" , cost: 1995 , year: "2018" , description: "Fermented and raised half in a 30-hectolitre foudre and half in tank, this is a blend of three parcels in Puligny, Chassagne and St Aubin. The vines in Puligny and Chassagne are both over 70 years old, limiting the yield and giving concentration. The nose is complex, with spicy and a slight hazelnut note along with some dried citrus fruit. The palate has a candied lemon and orange profile, rich fruit and a waxy, nutty finish. Drink now to 2024.")

bourgogne_aligote.dish_id = rigatoni
bourgogne_aligote.save!

cloudy_bay = Wine.new(name:"Cloudy Bay Sauvignon Blanc Marlborough" , cost: 3000 , year: "2017" , description: "Fermented and raised half in a 30-hectolitre foudre and half in tank, this is a blend of three parcels in Puligny, Chassagne and St Aubin. The vines in Puligny and Chassagne are both over 70 years old, limiting the yield and giving concentration. The nose is complex, with spicy and a slight hazelnut note along with some dried citrus fruit. The palate has a candied lemon and orange profile, rich fruit and a waxy, nutty finish. Drink now to 2024.")

cloudy_bay.dish_id = hake
cloudy_bay.save!

riesling = Wine.new(name:"Berry Bros. & Rudd Mosel Riesling Kabinett by Selbach-Oster, Germany" , cost: 1500 , year: "2018" , description: "This 2018 Riesling is made for us by the talented winemaker Johannes Selbach. His family winery is based in the beautiful Mosel town of Zeltingen, overlooking the steep, slate-rich slopes that are synonymous with this region. The wine displays attractive nectarine and jasmine flower notes, combined with hints of grapefruit and lime. The palate is refreshing and juicy, with lemon acidity that brings tension and structure to this off-dry Riesling. Drink now to 2023.")

riesling.dish_id = polenta_cake
riesling.save!

port = Wine.new(name:"Berry Bros. & Rudd Late Bottled Vintage Port by Quinta de la Rosa" , cost: 2000 , year: "2015" , description: "Quinta de la Rosa has forged a reputation for its elegant, “wine-lover’s” Ports and our LBV is no exception. This is full of ¬fine raspberry and blackberry fruit; a beautiful freshness mingling with sweet sophistication. The palate has real poise with intriguing layers of sweet spice combining with a savoury complexity. The ¬finish is long and moreish, with a slightly drier sensation than other Houses, making it a particularly fabulous match with a cheese course. The beauty of this LBV is that it is not overly rich and, by contrast, is fresh on its toes, encouraging (at least) another sip.")

port.dish_id = pistachio_cream
port.save!


