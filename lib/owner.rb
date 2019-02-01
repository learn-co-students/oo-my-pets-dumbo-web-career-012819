require 'pry'

require 'rb-readline'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []


  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:cats => [], :dogs => [], :fishes=>[]}
    @@owners << self

  end

  def self.reset_all
    @@owners.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
  @pets[:fishes] <<  Fish.new(name)
  end

  def buy_cat(name)
  @pets[:cats] <<  Cat.new(name)
  end

  def buy_dog(name)
  @pets[:dogs] <<  Dog.new(name)
  end

  def play_with_cats
    @pets[:cats].each do |v|
     v.mood = "happy"
  end
  end



  def walk_dogs
    @pets[:dogs].each do |v|
     v.mood = "happy"
  end
  end


  def feed_fish
    @pets[:fishes].each do |v|
     v.mood = "happy"
  end
  end



   def list_pets
   "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
   end

  def sell_pets
      @pets[:fishes].each {|v| v.mood = "nervous" }

      @pets[:dogs].each  { |v| v.mood = "nervous" }

      @pets[:cats].each  { |v| v.mood = "nervous" }

      @pets.map {|type, pets| pets.clear}
  end


  def self.all
   @@owners
  end

  def self.count
    @@owners.count
  end

end


binding.pry
