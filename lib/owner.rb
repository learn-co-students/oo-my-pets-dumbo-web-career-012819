require "pry"
class Owner
    OWNER = []
    attr_reader :species
    attr_accessor :name, :pets

    def initialize(species)
        @species = species
        @pets = {fishes: [], cats: [], dogs: []}

        OWNER << self
    end

    def self.all
#returns all of the info from the OWNER that has been created.
        OWNER
    end

    def self.count
        OWNER.length
    end

    def self.reset_all
#resets any data that the owner class has to zero.
        OWNER.clear
    end

    def say_species
        "I am a human."
    end

    def buy_fish(new_fish)
        # fishy = Fish.new(new_fish)
        #  @pets[:fishes] << fishy

         @pets[:fishes] << Fish.new(new_fish)
    end

    def buy_cat(new_cat)
        #this pushes the a new_cat object into the
        #pets hash ex: @pets = {fishes: [], cats: [], dogs: []}
        @pets[:cats] << Cat.new(new_cat)
    end

    def buy_dog(new_dog)
        @pets[:dogs] << Dog.new(new_dog)
    end

    def walk_dogs
#iterate down into the dogs hash to find his mood.
        @pets[:dogs].each do |stats|
#stats.mood equals to the mood of the dog in this instance.
            stats.mood = "happy"
        end
    end

    def play_with_cats
        @pets[:cats].each do |stats|
            stats.mood = "happy"
        end
    end

    def feed_fish
        @pets[:fishes].each do |stats|
            stats.mood = "happy"
        end
    end

    def sell_pets
#iterates through the class **owner** in this case
        @pets.each do |type, pets|
            pets.each do |stats|
                stats.mood ="nervous"

            #binding.pry
            end
        end
@pets = {fishes: [], cats: [], dogs: []}
    end
    #
    def list_pets
        #@pets.each do |a, k
           "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and 1 cat(s)."
            #binding.pry
        #end
    end
end
