class Gear

  attr_reader :chainrig, :cog

  def initialize(chaingrig, cog)
    @chainrig = chaingrig
    @cog      = cog
  end

  def ratio
    chainrig / cog.to_f
  end

  def gear_inches
    ratio * (rim + (tire * 2))
  end

end
