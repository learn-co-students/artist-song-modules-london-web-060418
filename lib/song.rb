require 'pry'

class Song

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  # include Findable::InstanceMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize     #will look this up in a super class 
  #   @@songs << self
  # end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end

end
