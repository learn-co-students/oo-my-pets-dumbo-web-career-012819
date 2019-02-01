require 'pry'
class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    all.clear
  end


  def say_species
    "I am a #{@species}."
  end

  def name
    @name
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name) 
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |x|
      x.mood = 'happy'
    end
  end

  def play_with_cats
    @pets[:cats].each do |x|
      x.mood = 'happy'
    end
  end

  def feed_fish
    @pets[:fishes].each do |x|
      x.mood = 'happy'
    end
  end

  def sell_pets
    @pets.each do|k, v|
      v.each do |x|
        x.mood = 'nervous'
      end
      v.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end