require 'pry'

class Artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  # include Findable::InstanceMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

 #The super keyword, placed inside a method, will tell that method
 #to look up its behavior in the method of the same name that lives
 #in the parent, or super, class.
  def initialize
    super
    # @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
