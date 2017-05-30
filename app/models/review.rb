class Review
  attr_accessor :restaurant, :content, :customer
  @@all = []
  def initialize(restaurant, content, customer)
    @@all << self
    @content = content
    @customer = customer
    @restaurant = Restaurant.find_by_name(restaurant)
    @restaurant.reviews << self
    @restaurant.customers << @customer.full_name
  end

  def self.all
    @@all
  end
end
