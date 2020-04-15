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
end
