class Gear

  attr_reader :chainrig, :cog, :rim, :tire

  def initialize(chaingrig, cog, rim, tire)
    @chainrig = chaingrig
    @cog      = cog
    @rim      = rim
    @tire     = tire
  end

  def ratio
    chainrig / cog.to_f
  end

  def gear_inches
    ratio * diameter
  end

  def diameter
    rim + (tire * 2)
  end

end
