time = Time.new

#adding seconds - like sleep
time2 = time + 60

puts time
puts time2

#Y2K
puts Time.local(2000, 1, 1)
puts Time.local(1975, 8, 7, 04, 00)

#red letter day
puts Time.gm(2006, 8, 19) 

#----------PLAY----------

mother = Time.local(1975, 7, 8, 04, 00)
child = Time.local(2006, 8, 19, 05, 38)

puts ((mother - child)/60/60/24/365).abs
