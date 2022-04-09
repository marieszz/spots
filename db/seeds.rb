p "Destroying bars"
Bar.destroy_all
p "Destroying participants"
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
    rating: 4.5,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€"
  },
  {
    address: "51 rue Faubourg St Denis, 75010 Paris",
    name: "Le Syndicat",
    rating: 4.5,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€"
  },
  {
    address: "136 Rue du Faubourg Poissonnière, 75010 Paris",
    name: "Billili",
    rating: 4.7,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€"
  },
  {
    address: "63 Rue de Belleville, 75019 Paris",
    name: "Combat",
    rating: 4.6,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€"
  },
  {
    address: "14 Rue Lobineau, 75006 Paris",
    name: "L'avant-comptoir du Marché'",
    rating: 4.5,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€"
  },
  {
    address: "17 Rue Jean de la Fontaine, 75016 Paris",
    name: "Cravan",
    rating: 4.4,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€"
  },
  {
    address: "12 Rue Frochot, 75009 Paris",
    name: "Lulu White",
    rating: 4.7,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€"
  },
  {
    address: "3 Rue Basfroi, 75011 Paris",
    name: "Septime la Cave",
    rating: 4.6,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€"
  },
  {
    address: "13 Bd du Temple, 75003 Paris",
    name: "La Mezcaleria",
    rating: 4.1,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€"
  },
  {
    address: "6 Rue Vivienne, 75002 Paris",
    name: "Danico",
    rating: 4.6,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€"
  },
]

bars = bars_h.each do |bar|
  b = Bar.new(bar)
  b.save!
end
