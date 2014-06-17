def echo(phrase)
	"#{phrase}"
end

def shout(phrase)
	"#{phrase.upcase}"
end

def repeat(phrase, n=2)
	phrase_array = []
	phrase_array << phrase
	"#{(phrase_array * n).join(' ')}"
end

def start_of_word(phrase, n)
	split_phrase = phrase.split('')
	"#{phrase[0..(n-1)]}"
end

def first_word(phrase)
	words = phrase.split(' ')
	"#{words[0]}"
end

def titleize(phrase)
	words = phrase.split(' ')
	words.each  do |word|  
		if word != "over" && word != "the" && word != "and" 
			word.capitalize!
		end
		words.first.capitalize! 
	end
	"#{words.join(' ')}"
end