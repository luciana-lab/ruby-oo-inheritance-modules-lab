require 'pry'

class Artist

  extend Findable::ClassMethods
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    # self.class.all << self          -> before it was @@artist << self
    super
    @songs = []
  end
  #super: will execute any code placed inside the super class' method of the same name, and then execute any code inside the child class' method.

  
  #this method was taken out and added in the findable.rb
  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def self.all
    @@artists
  end

  #these both methods were taken out and added in the memorable.rb
  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  ##this method was taken out and added in the paramable.rb
  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

end
