class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = Song.create
    song.name = name
    song
  end

  def self.find_by_name(name)
    @@all.each do |song|
      if song.name == name
        return song
      else 
        song.name !== name
        return false


      end
    end
  end


  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
