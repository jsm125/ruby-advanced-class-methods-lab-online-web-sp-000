class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize
    self.create
    @name = name
    @artist_name = artist_name
    @@all
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
