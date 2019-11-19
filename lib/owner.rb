class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    p "I am a #{@species}."
  end
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end
  
  def walk_dogs
    dogs.map!{|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    cats.map!{|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    cats.map!{|cat| cat.mood = "nervous"}
    dogs.map!{|dog| dog.mood = "nervous"}
  end
  
  def self.all 
    @@all 
  end
  
  def self.count
    @@all.length 
  end
  
  def self.reset_all
    @@all.clear
  end
  
end