class Artist
  
  @@all = []
  
  def self.all
    @@all
  end

  def self.total_experience
    self.all.inject(0) {|sum,artist| sum + artist.years_experience}
  end

  def self.most_prolific
    self.all. {|sum,artist| sum + artist.years_experience/}
  end

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self

  end
  
  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def create_painting(title, value, gallery)
      Painting.new(title, value, self, gallery)
  end

  



end
