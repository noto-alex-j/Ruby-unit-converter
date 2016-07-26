MyApp.get "/" do
	erb :"converter"
end

MyApp.post "/" do
	@conversion = params[:conversion]
	@ks = params[:ks]
	@pk = params[:pk]
	@ps = params[:ps]
	@input = params[:input]

	if @conversion == "ftoc" || @conversion == "ctof"
		@temp = Temperature.new(params[:input])
		if @conversion == "ftoc"
			@output = @temp.farenheitToCelsius
		elsif @conversion == "ctof"
			@output = @temp.celsiusToFarenheit
		end
	elsif @conversion == "mtok" || @conversion == "ktom"
		@distance = Distance.new(params[:input])
		if @conversion == "mtok"
			@output = @distance.milesToKilometers
		elsif @conversion == "ktom"
			@output = @distance.kilometersToMiles
		end
	elsif @conversion == "pounds" || @conversion == "kilos" || @conversion == "stone"
		@weight = Weight.new(params[:input])
		if @conversion == "pounds" && @ks == "kilos"
			@output = @weight.poundsToKilograms
		elsif @conversion == "pounds" && @ks == "stone"
			@output = @weight.poundsToStone
		elsif @conversion == "kilos" && @ps == "pounds"
			@output = @weight.kilogramsToPounds
		elsif @conversion == "kilos" && @ps == "stone"
			@output = @weight.kilogramsToStone
		elsif @conversion == "stone" && @pk == "kilos"
			@output = @weight.stoneToKilograms
		elsif @conversion == "stone" && @pk == "pounds"
			@output = @weight.stoneToPounds
		end
	end


		


	erb :"converter"
end