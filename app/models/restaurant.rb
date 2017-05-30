class Restaurant
  @@all = []
  attr_accessor :name, :reviews, :customers

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
    @customers = []
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.each do |restaurant|
      if restaurant.name == name
        return restaurant
      end
    end
  end
end
