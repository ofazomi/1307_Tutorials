toast = Proc.new do 
	puts 'Cheers!'
	
end

toast.call
toast.call

do_you_like = Proc.new do |good_stuff|
	puts "I *really* like #{good_stuff}!"
end

do_you_like.call 'raindrops on roses'
do_you_like.call 'whiskers on kittens'
do_you_like.call 'bright copper kettles'
do_you_like.call 'warm woolen mittens'
do_you_like.call 'brown paper packages tied up with string'
puts 'These are a few of my favorite things.'
