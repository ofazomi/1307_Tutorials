#----------GET MUSIC FILES----------
puts 'Let\'s make a playlist!'

#put files here
Dir.chdir '/home/ofazomi/Desktop/programs/music/'
puts "I'm looking for music here: #{Dir.pwd}."

#get files here
song_names = Dir['*.{mp3}']

if song_names.length == 0
  puts 'Sorry, you have no songs.'
	exit 
else
end

#puts song_names

#----------SHUFFLE----------
deck = []

while song_names.length > 0
	draw = song_names[rand(song_names.length)]
	song_names.delete(draw)
	deck.push draw
end

puts 'How many songs in this playlist?'
	draws = gets.chomp.to_i
	if draws == 0
		puts 'A zero song playlist? Yeah...'
		sleep 1
		puts 'Hear the sound of my one hand clapping, smarty pants.'
		sleep 1
		puts "You\'re getting a playlist of #{deck.length/2} songs." 
	
	elsif draws > deck.length
		puts 'There aren\'t that many songs so I\'ll just use all I have.'
		puts
		draws = deck.length
	else 
	end

#----------BUILD PLAY LIST FILE----------
puts 'What would you like to call your playlist?'
playlist_name = gets.chomp

puts

playlistfile_name = playlist_name + '.m3u'

#check for existing playlist of same name
compare = Dir['*.{m3u}']

compare.each do |name|
	if name == playlistfile_name
		puts 'Oops, that\'s a duplicate playlist name. I\'ll add a date.'
		time = Time.now.getutc
		playlistfile_name = playlist_name + '-' + time.to_s + '.m3u'
	else
	end
end
puts

puts 'Now making a random playlist called \'' + playlistfile_name + '\' of ' + draws.to_s + ' songs: '


#writing songs to playlist file
while draws > 0
	item = deck.pop
	File.open playlistfile_name, 'a' do |f|
		f.puts item
	print '...' #progress bar
	puts item
	sleep 1
	draws = draws -1
end
end

puts
puts 'All done. Enjoy.'
