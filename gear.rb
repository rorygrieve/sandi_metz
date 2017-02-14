class Gear

  attr_reader :chainrig, :cog, :wheel

  def initialize(chaingrig, cog, rim, tire)
    @chainrig = chaingrig
    @cog      = cog
    @wheel    = Wheel.new(rim, tire)
  end

  def ratio
    chainrig / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end

  Wheel = Struct.new(:rim, :tire) do
    def diameter
      rim + (tire * 2)
    end
  end

end
