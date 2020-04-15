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

  def total_inventory
    new_hash = {}
    inner_hash = {}
    @food_trucks.each do |foodtruck|
      foodtruck.inventory.each do |item, item_quantity|
        require "pry"; binding.pry
        if new_hash[item] == nil
          inner_hash[:quantity] = 0 #+ item_quantity
          inner_hash[:food_trucks] = []
          new_hash[item] = inner_hash
        elsif new_hash.include?(item)
          inner_hash[:quantity] += item_quantity
          inner_hash[:food_trucks] << foodtruck
          new_hash[item] = inner_hash
        end
      end
    end
    new_hash
  end
end
