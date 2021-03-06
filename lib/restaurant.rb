class Restaurant
  attr_reader :name, :opening_time, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    (opening_time.to_i + hours).to_s + ':00'
  end

  def add_dish(dish)
    dishes << dish
  end

  def open_for_lunch?
    opening_time.to_i < 12
  end

  def menu_dish_names
    menu = []
    dishes.each do |dish|
      menu << dish.upcase
    end
    menu
  end

  def announce_closing_time(hours)
    close = closing_time(hours).to_i
    if close < 12
      x = closing_time(hours).to_s + "AM"
      puts "#{name} will be closing at #{x}. Thank you!"
    elsif
      x = (closing_time(hours).to_i - 12).to_s + "PM"
      puts "#{name} will be closing at #{x}. Thank you!"
    else
      puts "Oops"
    end
  end

end
