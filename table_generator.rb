title = 'Necessities'
input = ['fairy', 'cakes', 'happy', 'fish', 'disgustipated', 'melon-balls']

def find_longest(title, input)
	longest = 0
	longest = title.length

	input.each { |item| 
		if item.length > longest
			longest = item.length
		end
	}

	return longest
end

def horizontal_line(len)
	print "+"
	len.times { print "-" }
	puts "+"
end

def title_entry(title, len)
	diff = len - title.length
	left_margin = 0
	right_margin = 0

	if diff % 2 == 0
		left_margin = diff / 2
		right_margin = diff / 2
	else
		left_margin = diff / 2
		right_margin = diff / 2 + 1
	end

	horizontal_line(len)
	print "|"
	left_margin.times { print " "}
	print "#{title}"
	right_margin.times { print " "}
	puts "|"
	horizontal_line(len)
end

def list_entry(input, len)
	input.each { |item|
		diff = len - item.length
		print "|#{item}"
		diff.times { print " " }
		puts "|"
	}
	horizontal_line(len)
end

def list_generator(title, input)
	longest = find_longest(title, input)
	title_entry(title, longest)
	list_entry(input, longest)
end

list_generator(title, input)