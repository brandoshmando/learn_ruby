def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	array.inject(0) {|sum, obj| sum + obj }
end