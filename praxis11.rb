#!/usr/bin/env ruby

#OOP

class Coffeemachine
  
  @@machine_counter = 0
  attr_accessor(:coffee, :water, :tank_coffee, :tank_water, :count_available)

  def self.count
    return @@machine_counter
  end

  def initialize(coffee = 0, water = 0, tank_coffee, tank_water)
    @coffee = coffee
    @water = water
    @tank_coffee = tank_coffee
    @tank_water = tank_water
    @@machine_counter += 1
    @coffee_counter = 0
    @maintenance = false
    @count_available = 0
  end

  def fill_coffee(g)
    @coffee = @coffee + g
    @maintenance = false
  end

  def fill_water(ml)
    @water = @water + ml
    @maintenance = false
  end

  def cook
    if (@coffee >= 8) and (@water >= 150) and (@maintenance != true) and (@count_available != 12)
      @maintenance = false
      @coffee = @coffee - 8
      @water = @water - 150
      @coffee_counter += 1
      @count_available += 1
      return "Enjoy it..."
    elsif (@count_available == 12 )
      @maintenance = true
      raise KaffeeMaschinenFatalError, "Please clean the machine."
    else
      @maintenance = true
      raise KaffeeMaschinenFatalError, "Please check the tanks"
    end
  end

  def clean
    @count_available = 0
    @maintenance = false
    return "cleaned..."
  end

  def info
      puts "Counter: #{@coffee_counter}"
      puts "Coffee available: #{@coffee}"
      puts "Water available: #{@water}"
      puts "Maintenance: #{@maintenance}"
      puts "Until cleaning #{12 - @count_available} cups of coffee."
  end

  class KaffeeMaschinenFatalError < StandardError
  end

end
