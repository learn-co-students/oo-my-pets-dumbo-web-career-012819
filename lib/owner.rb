require_relative 'cat.rb'
require_relative 'dog.rb'
require_relative 'fish.rb'

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species = "human")
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def say_species
    return "I am a #{self.species}."
  end

  def walk_dogs
    dogs = self.pets[:dogs]
    dogs.map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    cats = self.pets[:cats]
    cats.map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    fishes = self.pets[:fishes]
    fishes.map do |fish|
      fish.mood = "happy"
    end
  end

  # Changes all owner's pets mood to "nervous".
  # Then removes all pets
  def sell_pets
    all_animals = self.pets.values

    all_animals.each do |species|
      species.each {|pet| pet.mood = "nervous"}
      species.clear
    end
  end

  def list_pets
    pets = self.pets.values
    pet_count = pets.map{|species| species.length}

    return "I have #{pet_count[0]} fish, #{pet_count[2]} dog(s), and #{pet_count[1]} cat(s)."
  end

end

# owner = Owner.new
# owner.pets = {
#   :dogs => [Dog.new("Fido"), Dog.new("Daisy")],
#   :fishes => [Fish.new("Nemo")],
#   :cats => [Cat.new("Mittens"), Cat.new("Tabby")]
# }
#
# print owner.sell_pets
