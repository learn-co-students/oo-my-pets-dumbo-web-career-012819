require_relative "cat.rb"
require_relative "dog.rb"
require_relative "fish.rb"

require "pry"

class Owner
  # code goes here
  # ::all returns all instances of Owner that have been created (FAILED - 1)
  #    ::count returns the number of owners that have been created (FAILED - 2)
  #    ::count can reset the owners that have been created (FAILED - 3)
  attr_reader :species
  attr_accessor :pets, :name
  @@count = []
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@count << self

  end

  public

  def self.all
    @@count
  end

  def self.count
    @@count.length
  end

  def self.reset_all
    @@count = []
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    make_happy(:dogs)
  end

  def play_with_cats
    make_happy(:cats)
  end

  def feed_fish
    make_happy(:fishes)
  end

  def sell_pets
    @pets.map {|k,v| v.map {|animal| animal.mood = "nervous"}}
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


  private

  def make_happy(animals)
    @pets[animals].map { |animal| animal.mood = "happy" }
  end


end
