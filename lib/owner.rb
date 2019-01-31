require 'pry'

class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@all = []
  @@count = @@all

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}

    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def dogs
    self.pets[:dogs]
  end

  def cats
    self.pets[:cats]
  end

  def fishes
    self.pets[:fishes]
  end

  def sell_pets
    if dogs.length > 0
      dogs.map do |dog|
        dog.mood = "nervous"
      end
    end

    if cats.length > 0
      cats.map do |cat|
        cat.mood = "nervous"
      end
    end

    if fishes.length > 0
      fishes.map do |fish|
      fish.mood = "nervous"
      end
    end

    @pets = {}
  end

  def list_pets
    dogs
    cats
    fishes
    "I have #{fishes.length} fish, #{dogs.length} dog(s), and #{cats.length} cat(s)."
    #binding.pry
  end

end



 #binding.pry
