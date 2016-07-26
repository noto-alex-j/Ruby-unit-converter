class ConversionAdapter
  def initialize(conversion, input)
    if conversion == "ftoc" || conversion == "ctof"
      @converter = Temperature.new(conversion, input)
    elsif conversion == "mtok" || conversion == "ktom"
      @converter = Distance.new(conversion, input)
    end
  end

  # As long as the @converter implements a function called `convert`,
  # this will work. So any new converters I add merely need to have that
  # function as part of their API.
  def result
    @converter.convert
  end
end