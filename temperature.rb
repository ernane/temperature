class Temperature
  C = 'celsius'.freeze
  F = 'fahrenheit'.freeze
  K = 'kelvin'.freeze

  def initialize(value, unit)
    @value = value
    @unit = unit
  end

  def to_fahrenheit
    to_celsius * (9 / 5.0) + 32
  end

  def to_celsius
    case @unit
    when F
      (@value - 32) * 5 / 9.0
    when K
      @value - 273.15
    when C
      @value
    end
  end

  def to_kelvin
    to_celsius + 273.15
  end
end
