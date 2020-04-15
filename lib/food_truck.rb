class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if inventory.include?(item)
      @inventory[item]
    else
      0
    end
  end

  def stock(item, quantity)
    #@inventory[item] = quantity
    if @inventory[item] == nil
      @inventory[item] = 0
    end
    @inventory[item] += quantity
  end

  def potential_revenue

  end
  
end
