require 'minitest/autorun'
require File.expand_path('./temperature')

class TemperatureTest < Minitest::Test
  def test_convert_from_celsius_to_fahrenheit
    assert_in_delta 98.6, Temperature.new(37, Temperature::C).to_fahrenheit
  end

  def test_convert_from_fahrenheit_to_celsius
    assert_in_delta 37, Temperature.new(98.6, Temperature::F).to_celsius
  end

  def test_convert_from_celsius_to_kelvin
    assert_equal 310.15, Temperature.new(37, Temperature::C).to_kelvin
  end

  def test_convert_from_kelvin_to_celsius
    assert_equal 37, Temperature.new(310.15, Temperature::K).to_celsius
  end

  def test_convert_from_fahrenheit_to_kelvin
    assert_equal 310.15, Temperature.new(98.6, Temperature::F).to_kelvin
  end

  def test_convert_from_kelvin_to_fahrenheit
    assert_in_delta 98.6, Temperature.new(310.15, Temperature::K).to_fahrenheit
  end
end
