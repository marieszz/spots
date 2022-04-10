require "open-uri"
require "nokogiri"
require 'CSV'



  html_file = URI.open("https://www.timeout.fr/paris/bar/100-meilleurs-bars").read
  doc = Nokogiri::HTML(html_file)
  article = []
  names = []
  urls = []
  preferences = []
  doc.search('._title_1p2xe_9 a').each do |element|
    urls << element.attribute("href").text.strip
  end

  infos = []
  boire_quoi = []
  caracteristiques = []
  price_and_ratiing = []
  urls.each do |url|
    html_file = URI.open(url).read
    doc = Nokogiri::HTML(html_file)
    doc.search('._h1_1ucvn_1').each do |element|
      names << element.text.strip
    end
    puts"names"
    puts names
    doc.search('._text_163gl_28').each do |element|
      caracteristiques << element.text.strip
    end
    puts "caract"
    puts caracteristiques
    doc.search('.r-only').each do |element|
      price_and_ratiing << element.text.strip
    end
    puts "price"
    puts price_and_ratiing
    doc.search('.s1').each do |element|
      boire_quoi << element.text.strip
    end
    puts "boire"
    puts boire_quoi
    doc.search('._list_1fhdc_5').each do |element|
      infos << element.text.strip
    end
    puts "infos"
    puts infos
  end
