class ConversionAdapter
  def initialize(conversion, input, pks)
    if conversion == "ftoc" || conversion == "ctof"
      @converter = Temperature.new(conversion, input)
    elsif conversion == "mtok" || conversion == "ktom"
      @converter = Distance.new(conversion, input)
    elsif conversion == "pounds" || conversion == "kilos" || conversion == "stone"
      @converter = Weight.new(conversion, input, pks)  
    end
  end

  # As long as the @converter implements a function called `convert`,
  # this will work. So any new converters I add merely need to have that
  # function as part of their API.
  def result
    @converter.convert
  end
end