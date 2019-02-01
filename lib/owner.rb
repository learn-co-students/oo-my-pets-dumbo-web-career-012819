require_relative "cat.rb"
require_relative "dog.rb"
require_relative "fish.rb"
require "pry"
class Owner

  attr_accessor :pets, :name

@@all = []

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @@all << self
  end
#binding.pry
  def self.all
    @@all
  end
#binding.pry
  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{species}."
  end
  #binding.pry

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

 def buy_cat(name)
   @pets[:cats] << Cat.new(name)
 end

 def buy_dog(name)
   @pets[:dogs] << Dog.new(name)
 end
#binding.pry
 def walk_dogs
   @pets[:dogs].each do |dog|
     #binding.pry
    dog.mood = "happy" #= "happy"
 end
end

def play_with_cats
  @pets[:cats].each do |cat|
    #binding.pry
   cat.mood = "happy"
end
end

def feed_fish
  @pets[:fishes].each do |fish|
    #binding.pry
   fish.mood = "happy"
 end
end

def sell_pets
  #binding.pry
  pets.each do |pet, animals|
    animals.each do |animal|
      animal.mood = "nervous"
    end
    animals.clear
  end
end

def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
