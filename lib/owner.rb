require 'pry'
class Owner
  
  attr_reader  :species
  attr_accessor :name, :pets
  
  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
    @@count += 1
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
     @@count = 0
  end

  def say_species
    "I am a human."
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
    @pets[:dogs].map { |dog| dog.mood = "happy"}
  end
  
   def play_with_cats
    @pets[:cats].map { |cat| cat.mood = "happy"}
  end
  
   def feed_fish
    @pets[:fishes].map { |fish| fish.mood = "happy"}
  end
  
  def sell_pets
   @pets.each do |type, pets|
     @pets[type].map { |pet| pet.mood = "nervous"}
   end
   @pets.each do |type, pets|
     @pets[type] = []
   end
  end
  
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
  
end





