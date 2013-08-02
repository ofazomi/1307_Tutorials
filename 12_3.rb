dict_array = []
dict_hash = {}

dict_array[0] = 'bird'
dict_array[1] = 'Lauren'
dict_array[2] = 'down'
dict_array[3] = 'cow'

dict_hash['aye-aye'] = 'bird'
dict_hash['oh-oh'] = 'Lauren'
dict_hash['uppy'] = 'down'
dict_hash['pow'] = 'cow'

dict_array.each do |word|
  puts word
end

puts

dict_hash.each do |c_word, word|
	puts "#{c_word}:  #{word}"
end

puts

weird_hash = {}

weird_hash[12] = 'monkeys'
weird_hash['mu'] = 'emptiness'
weird_hash[Time.new] = 'no time like now'

weird_hash.each do |name, value|
	puts "#{name}: #{value}"
end
