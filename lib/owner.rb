require 'pry'

class Owner

  attr_reader :species
  attr_accessor :pets, :name

  # Class variable of all set up as an empty array
  @@all = []


  def initialize (species)
    @species = species
    # sets up pet has with 3 keys, values as empty arrays
    @pets = {fishes:[],dogs:[], cats:[] }
    # each time we initialize, the instance of that owner is
    # put into "all" array
    @@all << self
  end

  # Class method
  def self.all
    @@all
  end

  #
  def say_species
    "I am a #{@species}."
  end



  # Class method for count
  def self.count
   @@all.count
  end

  # Made class method so each instance doesnt have access to
  # reset the count just the class has that access
  def self.reset_all
    @@all = []
    # @@all.reset
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog (name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    # go through the pets hash... for each dog
    # change its mood to happy
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do|cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    # iterate through ALL of the pets individually,
    # then changes the value of each pet's mood to nervous
    @pets.each do |k,v|
      v.each do |value|
        value.mood = "nervous"
      end
    end
    #resets the pets hash to empty arrays
    @pets = {fishes:[],dogs:[], cats:[] }
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end