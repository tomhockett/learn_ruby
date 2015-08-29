def translate word
	alphabet = ('a'..'z').to_a
	vowels = %w(a e i o u)
	consonants = alphabet - vowels

	words = word.split(' ').map do |w|
		if w[0..1] == 'qu'
			w[2..-1] + w[0..1] + 'ay'
		elsif w[0..1] == 'sq'
			w[3..-1] + w[0..2] + 'ay'
		elsif vowels.include?(w[0])
			w + 'ay'
		elsif consonants.include?(w[0]) && consonants.include?(w[1]) && consonants.include?(w[2])
			w[3..-1] + w[0..2] + 'ay'
		elsif consonants.include?(w[0] && w[1])
			w[2..-1] + w[0..1] + 'ay'
		elsif consonants.include?(w[0])
			w[1..-1] + w[0] + 'ay'
		end
	end

	words.join(' ')

end