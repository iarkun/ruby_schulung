#!/usr/bin/env ruby

#OOP

class Coffeemachine
  
  @@machine_counter = 0
  attr_accessor(:coffee, :water, :tank_coffee, :tank_water)

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


  def fill_coffee(kg)
    @coffee = @coffee + (kg * 1000)
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
      puts "Please take your cup of coffee and enjoy it."
      puts "Counter: #{@coffee_counter}"
      puts "Coffee available: #{@coffee}"
      puts "Water available: #{@water}"
      puts "Until cleaning #{@count_available - 12} cups of coffee."
      puts "Maintenance: #{@maintenance}"
   
    elsif (@count_available == 12 )
      puts "Please clean the coffee machine !"
      @maintenance = true
    else
      puts "Bzzt. Not possible. Please check the tanks: minimum required 8 g coffee and 150 ml water"
      puts "Coffee available: #{@coffee}"
      puts "Water available: #{@water}"
      @maintenance = true
    end
  end

  def clean
    @count_available = 0
    @maintenance = false
    puts "Machine is cleaned."
  end

  def info
      puts "Counter: #{@coffee_counter}"
      puts "Coffee available: #{@coffee}"
      puts "Water available: #{@water}"
      puts "Maintenance: #{@maintenance}"

  end

end
