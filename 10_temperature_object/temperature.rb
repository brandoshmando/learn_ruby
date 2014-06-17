class Temperature
	
	def initialize(hash)
		@params = hash
	end
	
	def to_fahrenheit
		if @params[:f]
			@params[:f]
		else
			(@params[:c] * (9/5.0)) + 32
		end
	end

	def self.in_celsius(temp)
		self.new({ :c => temp })
	end

	def self.in_fahrenheit(temp)
		self.new({ :f => temp })
	end

	def to_celsius
		if @params[:c]
			@params[:c]
		else
			(@params[:f] - 32) * (5/9.0)
		end
	end
end

class Celsius < Temperature
	attr_accessor :temp
	
	def initialize(temp)
		super({ :c => temp })
	
	end
end

class Fahrenheit < Temperature
	attr_accessor :temp

	def initialize(temp)
		super({ :f => temp })
	end

end