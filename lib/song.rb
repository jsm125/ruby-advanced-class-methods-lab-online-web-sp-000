class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new 
    self.all << song 
    song
  end

  def self.new_by_name(title)
    song = self.new 
    song.name = title 
    song
  end
  
  def self.create_by_name(title)
    song = self.create
    song.name = title
    song
  end
  
  def self.find_by_name(title)
    song = self.all.detect {|song| song.name == title}
    song
  end
  
  def self.find_or_create_by_name(title)
    song = self.find_by_name(title)
    if song
      song
    else
      self.create_by_name(title)
    end
  end
  
  def self.alphabetical
    sorted_alphabetically = self.all.sort_by {|song| song.name}
    sorted_alphabetically
  end
  
  def self.new_from_filename
    song_info = filename.sub!
  
end