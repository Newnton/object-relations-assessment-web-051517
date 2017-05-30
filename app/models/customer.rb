class Customer
  attr_accessor :first_name, :last_name, :reviews
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    @@all.each do |customer|
      if customer.full_name == name
        return customer
      end
    end
  end

  def self.find_all_by_first_name(name)
    firstname = name.split(" ")[0]
    @@all.select do |customer|
      customer.first_name == firstname
    end
  end

  def self.all_names
    ret = []
    @@all.each do |customer|
      ret << customer.full_name
    end
    ret
  end

  def add_review(restaurant, content)
    new_review = Review.new(restaurant, content, self)
    reviews << new_review
  end

  def self.all
    @@all
  end
end
