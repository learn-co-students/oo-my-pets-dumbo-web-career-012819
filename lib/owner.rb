require "pry"

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species)
  	@species = species
  	@@all << self
  	@@count += 1
  	@pets = {fishes: [], cats: [], dogs: []}
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
  	"I am a #{@species}."
  end

  def buy_fish(fish)
  	bought_fish = Fish.new(fish)
  	@pets[:fishes] << bought_fish
  end

  def buy_cat(cat)
  	bought_cat = Cat.new(cat)
  	@pets[:cats] << bought_cat
  end

  def buy_dog(dog)
  	bought_dog = Dog.new(dog)
  	@pets[:dogs] << bought_dog
  end

  def walk_dogs
  	@pets[:dogs].each do |dog|
  		dog.mood = "happy"
  	end
  end

  def play_with_cats
  	@pets[:cats].each do |cat|
  		cat.mood = "happy"
  	end
  end

  def feed_fish
  	@pets[:fishes].each do |fish|
  		fish.mood = "happy"
  	end
  end

  def sell_pets
  	@pets.each do |pet_type, pet_array|
  		pet_array.map do |pet|
  			if pet.mood == "happy"
  				pet.mood = "nervous"
  			end
  		end
  	end
  	@pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
  	"I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end	
end
