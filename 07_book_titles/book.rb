class Book
	attr_accessor :title
	
	EXCEPTIONS = %w[and but or nor for yet of in the a an]

	def title=(string)
		string_array = string.split(' ')
		string_array.each do |word|
			word.capitalize! if !EXCEPTIONS.include?(word)
		end
		string_array.first.capitalize!
		@title = string_array.join(' ')
	end
end