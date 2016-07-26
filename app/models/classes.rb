class Temperature
	def initialize(input)
		@temp = input.to_i
	end

	def farenheitToCelsius
		((@temp - 32) * 5 / 9).to_s + "° C"
	end

	def celsiusToFarenheit
		(@temp * 9 / 5 + 32).to_s + "° F"
	end
end

class Distance
	def initialize(input)
		@distance = input.to_f
	end

	def milesToKilometers
		(@distance * 1.61).to_s + " kilometers"
	end

	def kilometersToMiles
		(@distance * 0.62).to_s + " miles"
	end
end

class Weight
	def initialize(input)
		@weight = input.to_f
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






