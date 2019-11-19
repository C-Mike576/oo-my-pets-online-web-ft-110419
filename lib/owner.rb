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
    Cat.all.select {|x| x.owner == self}
  end
  
  def dogs
    Dog.all.select {|x| x.owner == self}
  end
  
  def buy_cat(cat_name)
    cat_money = Cat.all.find {|x| x.name == cat_name}
    cat_money.owner = self
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