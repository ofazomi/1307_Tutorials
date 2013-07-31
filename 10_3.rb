set = ['H2', 'H3', 'H4', 'H5', 'H6', 'H7', 'H8', 'H9', 'HJ', 'HQ', 'HK', 'HA', 'D2', 'D3', 'D4', 'D5', 'D6', 'D7', 'D8', 'D9', 'DJ', 'DQ', 'DK', 'DA', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'SJ', 'SQ', 'SK', 'SA', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9', 'CJ', 'CQ', 'CK', 'CA']


def shuffle cards
deck = []
while cards.length > 0
  draw = cards[rand(cards.length)]
	cards.delete(draw)
	deck.push draw
end

puts 'How many cards?'
	draws = gets.chomp.to_i

while draws > 0
	puts deck.pop
	draws = draws -1
end
end

shuffle set
