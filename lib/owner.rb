require 'pry'
class Owner
attr_accessor :pets, :all, :name
attr_reader :owner, :species


@@all = []


    def initialize(species)
        @name = name
        @species = species
        @pets = {fishes: [], cats: [], dogs: []}
        @@all << self
    end

    def self.all
        @@all
    end

    def self.count
        @@all.size
    end

    def self.reset_all
        @@all.clear
    end

    def say_species
        "I am a #{@species}."
    end

    def name
        @name
    end

    def buy_fish(fish_name)
        @pets[:fishes] << Fish.new(fish_name)
    end

    def buy_cat(cat_name)
        @pets[:cats] << Cat.new(cat_name)
    end

    def buy_dog(dog_name)
        @pets[:dogs] << Dog.new(dog_name)
    end

    def walk_dogs
        @pets[:dogs].map do |info|
            info.mood= "happy"
        end
    end

    def play_with_cats
        @pets[:cats].map do |info|
            info.mood ="happy"
        end
    end

    def feed_fish
        @pets[:fishes].map do |info|
            info.mood ="happy"
        end
    end

    def sell_pets
        @pets.each do |species, animal|
            animal.each do |info|
                info.mood="nervous"
            end
        end
                #binding.pry
        @pets.map do |species, animal|
            animal.clear
        end
    end

    def list_pets
        return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."

    end
end
