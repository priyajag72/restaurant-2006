require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/restaurant'

class RestaurantTest < Minitest::Test
  # Iteration 1 Tests:
  def test_it_exists
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_instance_of Restaurant, restaurant
  end

  def test_it_has_opening_time
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal '10:00', restaurant.opening_time
  end

  def test_it_has_name
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal 'Fuel Cafe', restaurant.name
  end

  def test_it_has_dishes
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal [], restaurant.dishes
  end

  #Iteration 2 Tests:
  def test_it_has_closing_time
    # skip
    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('16:00', 'Il Poggio')

    assert_equal '18:00', restaurant1.closing_time(8)
    assert_equal '23:00', restaurant2.closing_time(7)
  end

  def test_it_can_add_dishes
    # skip
    restaurant = Restaurant.new('16:00', 'Il Poggio')

    restaurant.add_dish('Burrata')
    restaurant.add_dish('Pizzetta')
    restaurant.add_dish('Ravioli')

    assert_equal ['Burrata', 'Pizzetta', 'Ravioli'], restaurant.dishes
  end

  #Iteration 3 Tests:
  def test_if_open_for_lunch
    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal true, restaurant1.open_for_lunch?
  end

  def test_edge_case_if_open_for_lunch
    restaurant1 = Restaurant.new('11:59', 'Bob')

    assert_equal true, restaurant1.open_for_lunch?
  end

  def test_if_not_open_for_lunch
    restaurant1 = Restaurant.new('12:01', 'Janes')

    assert_equal false, restaurant1.open_for_lunch?
  end

  # def test_if_menu_prints
  #   restaurant = Restaurant.new('16:00', 'Il Poggio')
  #
  #   restaurant.add_dish('Burrata')
  #   restaurant.add_dish('Pizzetta')
  #   restaurant.add_dish('Ravioli')
  #
  #   assert_equal ['Burrata', 'Pizzetta', 'Ravioli'], restaurant.menu_dish_names
  # end

  def test_if_menu_prints_and_is_capitalized
    restaurant1 = Restaurant.new('16:00', 'Il Poggio')

    restaurant1.add_dish('Burrata')
    restaurant1.add_dish('Pizzetta')
    restaurant1.add_dish('Ravioli')

    assert_equal ['BURRATA', 'PIZZETTA', 'RAVIOLI'], restaurant1.menu_dish_names
  end

  #Iteration 4 Tests:
  def test_announce_closing_time_prints_string
    restaurant1 = Restaurant.new('8:00', 'Il Poggio')

    assert_equal "Il Poggio will be closing at 9AM. Thank you!", restaurant1.announce_closing_time(1)
  end

# CANT FIGURE OUT ERROR CODE... Tried research, but not enough time
  # main $🐧ruby test/restaurant_test.rb
  # Run options: --seed 10818
  # # Running:
  # Il Poggio will be closing at 9:00AM. Thank you!
  # 11/11: -_-_-_-_-_*_,------,
  # 10/11: -_-_-_-_-_*_|  /\_/\
  #  1/11: -_-_-_-_-_*~|_( x .x)
  #  0/11: -_-_-_-_-_* ""  ""
  #
  # You've Nyaned for 0.06 seconds
  # 
  # 11 examples, 1 failure
  #
  #   1) Failure:
  # RestaurantTest#test_announce_closing_time_prints_string [test/restaurant_test.rb:98]:
  # --- expected
  # +++ actual
  # @@ -1 +1 @@
  # -"Il Poggio will be closing at 9AM. Thank you!"
  # +nil
end
