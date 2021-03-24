require 'pry'

class Song

  extend Findable::ClassMethods
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   self.class.all << self          -> before it was @@songs << self
  # end

  #this method was taken out and added in the findable.rb
  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  #these both methods were taken out and added in the memorable.rb
  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

  #this method was taken out and added in the paramable.rb
  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

end
