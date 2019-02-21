require 'cat.rb'
require 'dog.rb'
require 'fish.rb'
require 'pry'

class Owner

  attr_reader :species
  attr_accessor :name, :pets

    @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
    dog.mood=("happy")
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood=("happy")
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood=("happy")
    end
  end

  def sell_pets
    @pets[:cats].each do |cat|
      cat.mood=("nervous")
    end
    @pets[:fishes].each do |fish|
      fish.mood=("nervous")
    end
    @pets[:dogs].each do |dogs|
      dogs.mood=("nervous")
    end
      self.pets.each do |type, pet|
        self.pets[type] = []
      end
  end

  def  buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def  buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def  buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
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

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
end