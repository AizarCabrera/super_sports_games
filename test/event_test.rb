require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'
require 'pry'

class EventTest < Minitest::Test


  def test_check_it_exists
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_instance_of Event, event
  end


  def test_it_has_attributes
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal "Curling", event.name

  end


  def test_it_max_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    actual= event.max_age
    expected = 41
    assert_equal expected, actual
  end

  def test_it_min_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    actual= event.min_age
    expected = 18
    assert_equal expected, actual
  end

  def test_it_average_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    actual= event.average_age
    expected = 26.6
    assert_equal expected, actual
  end

  def test_it_standard_deviation_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    actual= event.standard_deviation_age
    expected = 8.28
    assert_equal expected, actual
  end

  
end
