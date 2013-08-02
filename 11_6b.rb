require 'yaml'
#create yaml file saving and loading method

def yaml_save object, filename
  File.open filename, 'w' do |f|
		f.write(object.to_yaml)
	end
end

def yaml_load filename
	yaml_string = File.read filename
	YAML::load yaml_string
end

#use those methodd

test_array = ['Cindy Lauper rocks.', 'Asthma inhalers work.','Rube Goldberg lives.']
filename = 'GooniesTakeaway.txt'

yaml_save test_array, filename
read_array = yaml_load filename
puts(read_array == test_array)
