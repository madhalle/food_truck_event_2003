class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck_object)
    @food_trucks << food_truck_object
  end

  def food_truck_names
    names = @food_trucks.map do |foodtruck|
      foodtruck.name
    end
    names
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |foodtruck|
      foodtruck.inventory.include?(item)
    end
  end



end
