require 'yaml'
toDo = ['Finish Tutorial', 'Fold Laundry', 'Get 401k Paperwork', 'Walk Dog', 'Finish Postcard', 'Build Site B.I.', 'Finish Site P.P.', 'Build Site M.K.', 'Fix Shell O.Z.']
toDo_YAML = toDo.to_yaml
filename = 'ToDo.txt'

File.open filename, 'w' do |newFile|
  newFile.write toDo_YAML
end

readFile = File.read filename

readArray = YAML::load readFile

puts(readFile == toDo_YAML)
puts(readArray == toDo)
