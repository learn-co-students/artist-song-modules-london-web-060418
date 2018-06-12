require 'pry'

class Song
  extend Memorable::ClassMod, Findable
  include Memorable::InstanceMod, Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
