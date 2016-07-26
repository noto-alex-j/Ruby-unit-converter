MyApp.get "/" do
	erb :"converter"
end

MyApp.post "/" do
	if !params[:conversion].nil?
		@conversion = ConversionAdapter.new(params[:conversion], params[:input])
	end

	# No need to define separate variables for the conversion type or the
	# input, because they're stored in @conversion now. I can create getter
	# methods in that object, if I want to be able to access them directly.

	# In the view, @conversion.result is pretty much all I care about.

	erb :"converter"
end