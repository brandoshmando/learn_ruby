def translate(word)
	if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
		"#{word + word[0]}y"
	elsif word[1] == "a" || word[1] == "e" || word[1] == "i" || word[1] == "o" || word[1] == "u"
		"#{word[1..(word.size)] + word[0]}ay"
	else 
		"#{word[2..(word.size)] + word[0..1]}ay"	
	end
end
