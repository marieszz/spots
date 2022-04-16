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
    price_range: "€€",
    photo: "https://media-cdn.tripadvisor.com/media/photo-s/14/f5/2f/a8/photo0jpg.jpg"
  },
  {
    address: "51 rue Faubourg St Denis, 75010 Paris",
    name: "Le Syndicat",
    rating: 4.5,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€",
    photo: "https://www.businessmarches.com/wp-content/uploads/2019/11/59426674_3215788341780578_5601729748850966528_o.jpg"
  },
  {
    address: "136 Rue du Faubourg Poissonnière, 75010 Paris",
    name: "Billili",
    rating: 4.7,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€",
    photo: "https://axwwgrkdco.cloudimg.io/v7/lefooding.com/medias/2021/07/19_04_39_605_restaurant_billili_paris.jpeg?width=700&height=520&optipress=3"
  },
  {
    address: "63 Rue de Belleville, 75019 Paris",
    name: "Combat",
    rating: 4.6,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€",
    photo: "https://axwwgrkdco.cloudimg.io/v7/lefooding.com/medias/2021/07/10_59_38_662_bar_combat_paris.jpg?width=1400&height=1040&optipress=3"
  },
  {
    address: "14 Rue Lobineau, 75006 Paris",
    name: "L'avant-comptoir du Marché'",
    rating: 4.5,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€",
    photo: "https://media-cdn.tripadvisor.com/media/photo-s/0f/11/50/11/avant-comptoir-du-marche.jpg"
  },
  {
    address: "17 Rue Jean de la Fontaine, 75016 Paris",
    name: "Cravan",
    rating: 4.4,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€",
    photo: "https://www.thesocialitefamily.com/wp-content/uploads/2018/10/cravan-cafe-1-1070x642.jpg"
  },
  {
    address: "12 Rue Frochot, 75009 Paris",
    name: "Lulu White",
    rating: 4.7,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€",
    photo: "https://www.lacompagnie.com/media/1543/lulu-white-parisianist.jpg"
  },
  {
    address: "3 Rue Basfroi, 75011 Paris",
    name: "Septime la Cave",
    rating: 4.6,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€",
    photo: "https://images.xceed.me/bars/covers/septime-la-cave-club-paris-xceed39c2.jpeg"
  },
  {
    address: "13 Bd du Temple, 75003 Paris",
    name: "La Mezcaleria",
    rating: 4.1,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€",
    photo: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/53/2a/51/la-mezcaleria.jpg?w=1200&h=-1&s=1"
  },
  {
    address: "6 Rue Vivienne, 75002 Paris",
    name: "Danico",
    rating: 4.6,
    beer: true,
    wine: true,
    cocktail: true,
    price_range: "€€",
    photo: "https://www.daroco.fr/wp-content/uploads/2020/04/danico-2.jpg"
  },
]

bars = bars_h.each do |bar|
  b = Bar.new(bar)
  b.save!
end
