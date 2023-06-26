class ChangingTides
  def initialize(tide_height)
    @tide_height = tide_height
  end

  def tide_height
    @tide_height
  end

  def tide_change(amount)
    @tide_height += amount
  end

  def high_tide?
    @tide_height > 0
  end

  def low_tide?
    @tide_height <= 0
  end

  def storm_surge
    @tide_height * 3
  end

  def rising_tide?
    @tide_height > 0 && @tide_height < 2
  end

  def falling_tide?
    @tide_height < 0 && @tide_height > -2
  end

  def time_until_high_tide
    if rising_tide? || high_tide?
      "High tide is already here!"
    else
      (2 - (@tide_height*-1)).round
    end
  end

  def time_until_low_tide
    if falling_tide? || low_tide?
      "Low tide is already here!"
    else
      (2 - @tide_height).round
    end
  end

  def high_tide_info
    puts "The tide will be high in #{time_until_high_tide} hours."
    puts "The current height of the tide is #{tide_height} feet."
    puts "The predicted storm surge will be #{storm_surge} feet."
  end

  def low_tide_info
    puts "The tide will be low in #{time_until_low_tide} hours."
    puts "The current height of the tide is #{tide_height} feet."
    puts "The predicted storm surge will be #{storm_surge} feet."
  end
end

# Create a new instance of ChangingTides and set its @tide_height to the given
# argument
def create_changing_tides(tide_height)
  tide_cruncher = ChangingTides.new(tide_height)
  tide_cruncher
end

# Calculate the time until high tide
def time_until_high_tide(tide_height)
  tide_cruncher = create_changing_tides(tide_height)
  tide_cruncher.time_until_high_tide
end

# Calculate the time until low tide
def time_until_low_tide(tide_height)
  tide_cruncher = create_changing_tides(tide_height)
  tide_cruncher.time_until_low_tide
end

# Calculate the storm surge
def storm_surge(tide_height)
  tide_cruncher = create_changing_tides(tide_height)
  tide_cruncher.storm_surge
end

# Print info on high tide
def print_high_tide_info(tide_height)
  tide_cruncher = create_changing_tides(tide_height)
  tide_cruncher.high_tide_info
end

# Print info on low tide
def print_low_tide_info(tide_height)
  tide_cruncher = create_changing_tides(tide_height)
  tide_cruncher.low_tide_info
end

# Change the tide
def change_tide(tide_height, amount)
  tide_cruncher = create_changing_tides(tide_height)
  tide_cruncher.tide_change(amount)
end

# Check if the tide is currently high
def high_tide?(tide_height)
  tide_cruncher = create_changing_tides(tide_height)
  tide_cruncher.high_tide?
end

# Check if the tide is currently low
def low_tide?(tide_height)
  tide_cruncher = create_changing_tides(tide_height)
  tide_cruncher.low_tide?
end

# Check if the tide is currently rising
def rising_tide?(tide_height)
  tide_cruncher = create_changing_tides(tide_height)
  tide_cruncher.rising_tide?
end

# Check if the tide is currently falling
def falling_tide?(tide_height)
  tide_cruncher = create_changing_tides(tide_height)
  tide_cruncher.falling_tide?
end