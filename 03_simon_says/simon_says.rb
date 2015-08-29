def echo stuff
	stuff
end

def shout stuff
	stuff.upcase
end

def repeat(stuff, n = 2)
	([stuff] * n).join(' ')
end

def start_of_word(stuff, n)
	stuff[0...n]
end

def first_word(stuff)
	stuff.split(' ').first
end

def titleize(stuff)
	words = stuff.split.map do |thing|
		if %w(and over the).include?(thing)
			thing
		else			
			thing.capitalize
		end
	end
	words.first.capitalize!
	words.join(' ')
end