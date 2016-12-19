###############################
#1. FIND ALL UNIQUE NUMBERS IN GIVEN ARRAY
#USING .unique method
###############################
def unique(a)
  unique_collected = a.uniq
  return unique_collected
end

unique_numbers = [1,1,1,5,5,88, 88]

puts '#############################################################'
puts 'SCRIPT USING: .uniq METHOD TO FIND UNIQUE NUMBERS IN ARRAY' 
puts 'TESTING ARRAY: ' + unique_numbers.inspect
puts '#############################################################'
puts
puts 'FINAL OUTPUT ARRAY: ' + unique(unique_numbers).inspect
puts

###############################
#2. FIND ALL UNIQUE NUMBERS IN GIVEN ARRAY
#USING .include? method
###############################

# def method_include(some_array)
#   _new_array = []
#   puts
#   puts
#   puts
#   puts 'SCRIPT USING: .include? METHOD' 
#   puts
#   puts 'TESTING ARRAY: ' + some_array.inspect
#   puts 
#   puts 'Logging results of loop: '
#   some_array.each do |a|
#     if _new_array.include?(a) == false
#       _new_array.push(a)
#       puts "Pushed " + a.to_s + " into out put array:" + _new_array.inspect
#     else
#       _new_array
#       puts a.to_s + " is duplicate data."
#     end
#   end
#   puts 
#   puts "FINAL OUTPUT ARRAY: " + _new_array.inspect
#   puts 
# end

# _test_array = [1,2,3,4, 4,2,2,1,6,9,9,9,9]

# method_include(_test_array)


###############################
#REFACTORED
#2. FIND ALL UNIQUE NUMBERS IN GIVEN ARRAY
#USING .include? method
###############################

def uniq_array(some_array)
  new_array = []
  puts '#############################################################'
  puts 'SCRIPT USING: .include? METHOD TO FIND UNIQUE NUMBERS IN ARRAY' 
  puts 'TESTING ARRAY: ' + some_array.inspect
  puts '#############################################################'
  puts 
  puts 'Logging results of loop: '

  some_array.each do |a|
    if ! new_array.include?(a)
      new_array.push(a)
      puts "Pushed " + a.to_s + " into output array:" + new_array.inspect
    else
      new_array
      puts a.to_s + " is duplicate data."
    end #END IF BLOCK
  end #END LOOP
  puts
  puts '######################################################################'
  puts "FINAL OUTPUT: ALL UNIQUE NUMBERS PUT INTO A NEW ARRAY " + new_array.inspect.chomp
  puts '######################################################################'
end #END uniq_array

uniq_array([1,2,3,4, 4,2,2,1,6,9,5, 5, 6, 7, 9,9,9]).inspect








