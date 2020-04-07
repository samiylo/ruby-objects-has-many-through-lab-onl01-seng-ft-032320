class Genre 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def songs 
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists
    songs.collect {|song| song.artist}
  end
  
  
  # Class Methods
  
  def self.all 
    @@all
  end
  
end