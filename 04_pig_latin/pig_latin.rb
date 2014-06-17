EXCEPTION = %w[ a e i o u qu ]

def translate(phrase)
	words = phrase.split(' ')
	pig_words = []
	words.each do |word|
		if EXCEPTION.include?(word[0])
			pig_words << "#{word}ay"
		elsif EXCEPTION.include?(word[0..1])
				pig_words << "#{word[2..-1] + word[0..1]}ay"
		elsif EXCEPTION.include?(word[1])
			pig_words << "#{word[1..-1] + word[0]}ay"
		elsif EXCEPTION.include?(word[2])
			pig_words << "#{word[2..-1] + word[0..1]}ay"
		elsif EXCEPTION.include?(word[3])
			pig_words << "#{word[3..-1] + word[0..2]}ay"
		end
	end
	pig_words.join(' ')
end