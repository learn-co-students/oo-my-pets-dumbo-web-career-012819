require "pry"
class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@owners = []

  def initialize (name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def buy_dog (name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def buy_fish (name)
    @pets[:fishes] << Fish.new(name)
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |species, species_arr|
      species_arr.each {|info| info.mood = "nervous"}
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end
  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners = []
  end

  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
