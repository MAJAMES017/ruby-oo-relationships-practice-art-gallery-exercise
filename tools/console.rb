require_relative '../config/environment.rb'


a1 =Artist.new("sam", 13)
a2 =Artist.new("ted", 1)

g1 = Gallery.new("fancyart", "seattle")
g2 = Gallery.new("graffitplace", "bozeman")

p1 = Painting.new("jasper the great", 1000000, a1, g1)
p2 = Painting.new("calm day", 40000, a2, g2)
p2 = Painting.new("windy field", 140000, a2, g1)

# An artist can, of course, have many paintings. Paintings can only be in one gallery at a time, and only have one artist.  Galleries can have many paintings.
binding.pry

puts "Bob Ross rules."
