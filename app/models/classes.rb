class Temperature
	def initialize(conversion, input)
		@conversion = conversion
		@temp = input.to_i
	end

	# This is the method which the ConversionAdapter calls.
	def convert
		if @conversion == "ftoc"
			self.farenheitToCelsius
		elsif @conversion == "ctof"
			self.celsiusToFarenheit
		end
	end

	def farenheitToCelsius
		((@temp - 32) * 5 / 9).to_s + "° C"
	end

	def celsiusToFarenheit
		(@temp * 9 / 5 + 32).to_s + "° F"
	end
end

class Distance
	def initialize(conversion, input)
		@conversion = conversion
		@distance = input.to_f
	end

	# This is the method which the ConversionAdapter calls.
	def convert
		if @conversion == "mtok"
			self.milesToKilometers
		elsif @conversion == "ktom"
			self.kilometersToMiles
		end
	end

	def milesToKilometers
		(@distance * 1.61).to_s + " kilometers"
	end

	def kilometersToMiles
		(@distance * 0.62).to_s + " miles"
	end
end

class Weight
	def initialize(conversion,input,pks)
		@conversion = conversion
		@pks = pks
		@weight = input.to_f
	end

	def convert
		if @conversion == "pounds" && @pks == "kilos"
			self.poundsToKilograms
		elsif @conversion == "pounds" && @pks == "stone"
			self.poundsToStone
		elsif @conversion == "kilos" && @pks == "pounds"
			self.kilogramsToPounds
		elsif @conversion == "kilos" && @pks == "stone"
			self.kilogramsToStone
		elsif @conversion == "stone" && @pks == "kilos"
			self.stoneToKilograms
		elsif @conversion == "stone" && @pks == "pounds"
			self.stoneToPounds
		end
	end

	def poundsToKilograms
		(@weight * 0.45).to_s + " kilograms"
	end

	def kilogramsToPounds
		(@weight * 2.2).to_s + " pounds"
	end

	def poundsToStone
		(@weight * 0.07).to_s + " stone"
	end

	def stoneToPounds
		(@weight * 14).to_s + " pounds"
	end

	def kilogramstoStone
		(@weight * 0.16).to_s + " stone"
	end

	def stoneToKilograms
		(@weight * 6.35).to_s + " kilograms"
	end
end






