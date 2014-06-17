def reverser
	array = yield.split(' ')
	array.each { |word| word.reverse! }
	array.join(' ')
end

def adder(n=1)
	yield + n
end

def repeater(x=1)
	x.times { yield }
end