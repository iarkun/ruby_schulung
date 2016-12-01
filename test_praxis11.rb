require "simplecov"
SimpleCov.start
require './praxis11.rb'
require 'minitest/autorun'

class CoffeeTest < Minitest::Test

  def setup
   #Presteps
   @machine = Coffeemachine.new(1000,2000)
   @machine.fill_water(2000)
   @machine.fill_coffee(500) 
  end

  def teardown
    #Poststeps
  end
  
  def test_successful_cook_coffee
    assert_match /Enjoy it\.\.\./, @machine.cook
  end
  
  def test_maintenance_counter
#    @machine.count_available = 12
    12.times {@machine.cook}
    
    assert_raises Coffeemachine::KaffeeMaschinenFatalError do
      @machine.cook
    end
  end
  
end
