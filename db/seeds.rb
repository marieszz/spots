require "open-uri"
require "nokogiri"

p "Destroying suggestions"
Suggestion.destroy_all
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
    gender: "Féminin"
  },
  {
    email: "marie@gmail.com",
    password: "maries",
    username: "marieszz",
    gender: "Féminin"
  },
  {
    email: "arthur@gmail.com",
    password: "arthur",
    username: "arthur",
    gender: "Masculin"
  },
  {
    email: "theophane@gmail.com",
    password: "theophane",
    username: "tek",
    gender: "Masculin"
  },
  {
    email: "pierre@gmail.com",
    password: "pierre",
    username: "pierre",
    gender: "Non-binaire"
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
    name: "L'avant-comptoir du Marché",
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

bars = bars_h.map.with_index do |bar, index|
  photo = URI.open(bar[:photo])

  b = Bar.new(address: bar[:address],
              name: bar[:name],
              rating: bar[:rating],
              beer: bar[:beer],
              wine: bar[:wine],
              cocktail: bar[:cocktail],
              price_range: bar[:price_range])
  b.photo.attach(io: photo, filename: "bar#{index}.png", content_type: "image/png")
  b.save!
  b
end

html = URI.open("https://www.timeout.fr/paris/bar/100-meilleurs-bars").read
doc = Nokogiri::HTML(html, nil, "utf-8")
doc.search(".articleContent").each do |element|
  bar = Bar.new
  name = element.search("._h3_cuogz_1").text.strip.gsub(/\d*\.\W/, "").strip
  bar.name = name
  if element.search("._title_1p2xe_9 a").first.nil?
    url = "no url"
  else
    url = element.search("._title_1p2xe_9 a").first.attribute("href").value.strip
    html2 = URI.open(url).read
    doc2 = Nokogiri::HTML(html2, nil, "utf-8")
    doc2.search("._info_12yxf_35").each do |element|
      address = "#{element.search("._list_1fhdc_5").first.text.strip.gsub("Adresse", "").gsub("Paris", ", ").gsub(/\d{2}e/, "").gsub("  "," ")} Paris"
      bar.address = address
    end
    rating = doc2.search("._filled_k40fn_19").count / 2
    bar.rating = rating
    description = doc2.search("#content").text.strip
    bar.description = description
    (description.include?("cocktail") || description.include?("cocktails")) ? cocktail = true : cocktail = false
    bar.cocktail = cocktail

    (description.include?("bière") || description.include?("bières")) ? beer = true : beer = false

    bar.beer = beer

    (description.include?("vin") || description.include?("vins")) ? wine = true : wine = false

    bar.wine = wine

    if doc2.search("._filled_1wsig_15").count == 1
      price_range = "€"
    elsif doc2.search("._filled_1wsig_15").count == 2
      price_range = "€€"
    else
      price_range = "€€€"
    end

    bar.price_range = price_range
    bar.soft = true
    bar.save
    puts "bar saved"
  end
end

p "bars created"
