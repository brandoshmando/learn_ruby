class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end

	def time_string
		seconds = @seconds%60
		minutes = @seconds/60%60
		hours = @seconds/60/60

		hours = "0#{hours}" if hours < 10
		minutes = "0#{minutes}" if minutes < 10
		seconds = "0#{seconds}" if seconds < 10

		"#{hours}:#{minutes}:#{seconds}"
	end
end