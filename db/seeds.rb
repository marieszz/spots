p "destroying participants"
Participant.destroy_all
p "Destroying dates"
Dating.destroy_all
p "Destroying users"
User.destroy_all

users_h = [
  {
    email: "myriam@gmail.com",
    password: "myriam",
    username: "mymy",
    gender: "Féminin",
  },
  {
    email: "marie@gmail.com",
    password: "maries",
    username: "marieszz",
    gender: "Féminin",
  },
  {
    email: "arthur@gmail.com",
    password: "arthur",
    username: "arthur",
    gender: "Masculin",
  },
  {
    email: "theophane@gmail.com",
    password: "theophane",
    username: "tek",
    gender: "Masculin",
  },
  {
    email: "pierre@gmail.com",
    password: "pierre",
    username: "pierre",
    gender: "Non-binaire",
  }
]

users_h.each do |user|
  u = User.new(user)
  u.save!
end

p "Users created"
# Creating bars

bars_h = [
  {
    address: "15 Bd du Temple, 75003 Paris",
    name: "Bisou.",
    rating: 4.5
  },
  {
    address: "51 rue Faubourg St Denis, 75010 Paris",
    name: "Le Syndicat",
    rating: 4.5
  },
  {
    address: "136 Rue du Faubourg Poissonnière, 75010 Paris",
    name: "Billili",
    rating: 4.7
  },
  {
    address: "63 Rue de Belleville, 75019 Paris",
    name: "Combat",
    rating: 4.6
  },
  {
    address: "14 Rue Lobineau, 75006 Paris",
    name: "L'avant-comptoir du Marché'",
    rating: 4.5
  },
  {
    address: "17 Rue Jean de la Fontaine, 75016 Paris",
    name: "Cravan",
    rating: 4.4
  },
  {
    address: "12 Rue Frochot, 75009 Paris",
    name: "Lulu White",
    rating: 4.7
  },
  {
    address: "3 Rue Basfroi, 75011 Paris",
    name: "Septime la Cave",
    rating: 4.6
  },
  {
    address: "13 Bd du Temple, 75003 Paris",
    name: "La Mezcaleria",
    rating: 4.1
  },
  {
    address: "6 Rue Vivienne, 75002 Paris",
    name: "Danico",
    rating: 4.6
  },
]

bars = bars_h.each do |bar|
  b = Bar.new(bar)
  b.save!
end

bisou = bars[0]
syndicat = bars[1]
billili = bars[2]
combat = bars[3]
l_avant = bars[4]
cravan = bars[5]
lulu = bars[6]
septime = bars[7]
mezca = bars[8]
danico = bars[9]

p "bars created"

# Creating drinks

# cocktails_h = [
#   {
#     drink: "Cocktails",
#     price_range: "8-12",
#     bar: bisou
#   },
#   {
#     drink: "Cocktails",
#     price_range: "8-12",
#     bar: syndicat
#   },
#   {
#     drink: "Cocktails",
#     price_range: "8-12",
#     bar: billili
#   },
#   {
#     drink: "Cocktails",
#     price_range: "8-12",
#     bar: combat
#   },
#   {
#     drink: "Cocktails",
#     price_range: ">12",
#     bar: l_avant
#   },
#   {
#     drink: "Cocktails",
#     price_range: "8-12",
#     bar: cravan
#   },
#   {
#     drink: "Cocktails",
#     price_range: "8-12",
#     bar: lulu
#   },
#   {
#     drink: "Cocktails",
#     price_range: ">12",
#     bar: septime
#   },
#   {
#     drink: "Cocktails",
#     price_range: "8-12",
#     bar: mezca
#   },
#   {
#     drink: "Cocktails",
#     price_range: ">12",
#     bar: danico
#   }
# ]

# cocktails_h.each do |cocktail|
#   c = Drink.new(cocktail)
#   c.save!
# end

# p "Cocktails created"
