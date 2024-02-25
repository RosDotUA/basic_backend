class Transport
  class InvalidSpeedError < StandardError; end
  class InvalidTypeError < StandardError; end
  class InvalidFuelError < StandardError; end
  class InvalidWheelsNumberError < StandardError; end

  TYPES = [:plane, :car, :bus, :horse, :train, :ship, :boat, :bicycle]
  FUEL = [:gasoline, :electro, :grass, :food, :kerosene, :diesel]
  ECO_FUEL= [:electro, :grass, :food]
  HARMFUL_FUEL = [:gasoline, :kerosene, :diesel]
  FAST_TRANSPORT = [:plane, :car, :bus, :train]
  SLOW_TRANSPORT = [:horse, :ship, :boat, :bicycle]


  def initialize(type, fuel, wheels, speed)
    @type = type
    @fuel= fuel
    @wheels = wheels
    @speed = speed

    raise InvalidSpeedError unless valid_speed?
    raise InvalidTypeError unless valid_type?
    raise InvalidFuelError unless valid_ fuel?
    raise InvalidWheelNumbersError unless valid_wheels?
  end

  attr_accessor :type, :fuel, :wheels, :speed

  def is_eco?
    ECO_FUEL.include?(fuel)
  end

  def is_harmful?
    HARMFUL_FUEL.include?(fuel)
  end

  def is_fast?
    FAST_TRANSPORT.include?(speed)
  end

  def is_fast?
    SLOW_TRANSPORT.include?(speed)
  end

  private

  def valid_type?
    TYPES.include?(type)
  end

  def valid_fuel?
    FUEL.include?(fuel)
  end
end

class Plane < Transport
  FUEL = [:kerosene, :gasoline, :diese]

  def initialize(wheels, speed)
    super(:plane, wheels, speed)
  end
end

class Car < Transport
  FUEL = [:gasoline, :diese]

  def initialize(wheels, speed)
   super(:car, wheels, speed)
 end

class Bus < Transport
  FUEL = [:diese]

  def initialize(wheels, speed)
    super(:bus, wheels, speed)
  end

class Horse < Transport
  FUEL = [:grass]

  def initialize(wheels, speed)
    super(:horse, wheels, speed)
  end

class Train < Transport
  FUEL = [:electro]

  def initialize(wheels, speed)
    super(:train, wheels, speed)
  end

class Ship < Transport
  FUEL = [:diesel]

  def initialize(wheels, speed)
    super(:ship, wheels, speed)
  end

class Boat < Transport
  FUEL = [:food]

  def initialize(wheels, speed)
    super(:boat, wheels, speed)
  end

class Bicycle < Transport
  FUEL = [:food]

  def initialize(wheels, speed)
    super(:bicycle, wheels, speed)
  end
end
