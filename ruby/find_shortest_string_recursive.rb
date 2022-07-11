def find_shortest_string_recursive(arr)
  # shortest = arr.first.size
  # string = arr.second.size
  return arr[0] if arr.length == 1

  if !arr[1]
    arr[0]
  elsif arr[1].length < arr[0].length
    arr[0] = arr[1]
  end

 if !arr[1]
  input_array = arr[0]
 else 
  arr.delete_at(1)
  input_array = arr
 end

  find_shortest_string_recursive(input_array)
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string_recursive(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string_recursive(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string_recursive(['flower', 'juniper', 'lily', 'dandelion'])

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
