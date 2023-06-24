#define the class 'Changing Tides'
class ChangingTides

  #initialize method
  def initialize
  end

  #method to set the temperature
  def set_temperature(temp)
    @temperature = temp
  end

  #method to get the temperature
  def get_temperature
    @temperature
  end

  #method to set the wave height
  def set_wave_height(height)
    @wave_height = height
  end

  #method to get the wave height
  def get_wave_height
    @wave_height
  end

  #method to set the tide
  def set_tide(tide)
    @tide = tide
  end

  #method to get the tide
  def get_tide
    @tide
  end

  #method to determine the weather
  def weather
    if @temperature > 85 && @wave_height > 1
      "It's a hot and stormy day!"
    elsif @temperature > 85 && @wave_height < 1
      "It's a hot and calm day!"
    elsif @temperature < 85 && @wave_height > 1
      "It's a cool and stormy day!"
    elsif @temperature < 85 && @wave_height < 1
      "It's a cool and calm day!"
    end
  end

  #method to set the rate of change in wave height
  def set_wave_height_change(change)
    @wave_height_change = change
  end

  #method to get the rate of change in wave height
  def get_wave_height_change
    @wave_height_change
  end

  #method to set the rate of change in temperature
  def set_temperature_change(change)
    @temperature_change = change
  end

  #method to get the rate of change in temperature
  def get_temperature_change
    @temperature_change
  end

  #method to determine the rate of change in tide
  def tide_change
    if @tide == "high" && @wave_height_change > 0
      "The tide is rising!"
    elsif @tide == "low" && @wave_height_change < 0
      "The tide is falling!"
    end
  end

  #method to determine the rate of change in temperature
  def temperature_change
    if @temperature_change > 0
      "It's getting warmer!"
    elsif @temperature_change < 0
      "It's getting cooler!"
    end
  end

end