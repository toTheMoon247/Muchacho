# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

wagamama = Restaurant.create!(name: "Wagamama", description: "High quality food!", dietary: "veagan", category: "Japanese", address: "17 Bedford St, Covent Garden, London")
the_alchemist = Restaurant.create!(name: "The Alchemist", description: "Innovative Food!", category: "American", address: "6 Bevis Marks, Aldgate, London")
texture = Restaurant.create!(name: "Texture", description: "With its light Euro-Scandinavian menu and Nordic flare for design, Marylebone's Michelin-starred Texture is a firm favourite amongst stars. Look out for Victoria Beckham at the champagne bar or sauntering towards the private dining area.", category: "British", address: "34 Portman St, Marylebone, London W1H 7BY")
the_swan = Restaurant.create!(name: "The Swan", description: "With dazzling river views (in which a proud St Paul's takes centre stage) an upscale, cosy interior and locally sourced dishes dreamt up by Allan Pickett, The Swan at The Globe is a firm favourite amongst big-wig theatre-lovers.", dietary: "veagan", category: "British", address: "21 New Globe Walk, Bankside, London SE1 9DT")
scott = Restaurant.create!(name: "Scott's Restaurant", description: "The sophisticated Scott's, with its glamorous clientele and spectacular seafood bar, started life as an oyster warehouse back in 1851. Now, it plays home away from home to the likes of Nigella Lawson, Kate Moss, David Walliams, Rod Stewart, Stephen Stielberg... Oh, the stories those tables could tell.", category: "British", address: "20 Mount St, Mayfair, London W1K 2HE")
