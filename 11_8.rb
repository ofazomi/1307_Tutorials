#----------SOME INSTRUCTION----------
#puts Dir['DickCheney.jpg']
#puts Dir['*.jpg']

#find jpegs in current directory
#puts Dir['*.{JPG,jpg,jpeg}']

#find jpegs in parent directory
#puts Dir['../*.{JPG,jpg,jpeg}']

#finds jpegs in current directory and all sub directories
#puts Dir['**/*.{JPG,jpg,jpeg}']


#----------PROGRAM----------
#example of program to find and move text files

#put files here

Dir.chdir '/home/ofazomi/Desktop/programs/text'
puts Dir.pwd


#get files here
txt_names = Dir['*.{txt}']
puts txt_names

puts 'What would you like to call this batch of files?'
batch_name = gets.chomp

puts
print "renaming #{txt_names.length} files: "

#counter

file_number = 1

txt_names.each do |name|
  print '.' #progress bar

	new_name = 
		if file_number < 10
			"#{batch_name}0#{file_number}.txt"
		else
			"#{batch_name}#{file_number}.txt"
		end

	if name == new_name
		new_name = 'dupe-' + new_name
		File.open new_name, 'w' do |f|
			f.write ''
			end
	else
		File.rename name, new_name
	end

file_number = file_number + 1

end

puts
puts 'All set. Onward.'
