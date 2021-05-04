# # Lesson 4 practice problems 

# # Practice problem 1
# [1, 2, 3].select do |num|
#   num > 5
#   'hi'
# end
# # => [1, 2, 3]

# # Practice problem 2
# ['ant', 'bat', 'caterpillar'].count do |str|
#   str.length < 4
# end
# # .count - counts the number of elements that return true when passed to the block
# # In this case the method returns the integer 2 because the first two elements are true for the block 

# # Practice problem 3
# [1, 2, 3].reject do |num|
#   puts num
# end
# # => [1, 2, 3] - because the block returns nil for all three elements =
# # The method returns elements that are falsey 

# # Practice problem 4
# ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
#   hash[value[0]] = value
# end
# # =>{'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}

# # Practice problem 5
# hash = { a: 'ant', b: 'bear' }
# hash.shift
# # => [a, 'ant'] - it returns an element of the hash as an array of the key value pairs

# # Practice problem 6
# ['ant', 'bear', 'caterpillar'].pop.size
# # => 11 - pop returns the last element of the arraywhich is the string 'caterpiallar'
# # size uses this return value to return the size of the string which is 11

# # Practice problem 7
# [1, 2, 3].any? do |num|
#   puts num
#   num.odd?
# end
# # => true - the block returns true, false and true because the last line in the block returns a boolean. 
# # .any? also returns a boolean and in this case at least one of the elements return true
# # so the method also returns true

# # Practice problem 8
# arr = [1, 2, 3, 4, 5]
# arr.take(2)
# # => [1, 2] - it returns the first n elements of the array. - is not destructive

# # Practice problem 9
# { a: 'ant', b: 'bear' }.map do |key, value|
#   if value.size > 3
#     value
#   end
# end
# # => [nil, 'bear'] - the conditional is only true for the second element which returns the value 
# # the first value evaluates to false and thus returns nil. Map always returns an array collection. 

# # Practice problem 10
# [1, 2, 3].map do |num|
#   if num > 1
#     puts num
#   else
#     num
#   end
# end
# # => [1, nil, nil]

# Lesson 4 Additional Practice Problems 

# Problem 1
# Turn the array into a hash where the names are the keys and the position is the value
# flintstones_hash = {}
# flintstones.each_with_index do |name, index|
#   flintstones_hash[name] = index
# end
# # REWVIEW ANSWER AGAIN

# # Problem 2
# ages = { 
#   "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
#   "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 
# }
# # Add up all of the ages in the munster family hash
# total_ages = 0
# ages.select do |name, age|
#   total_ages += age 
# end 
# p total_ages

# Problem 3
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# ages.delete_if do |name, age|
#   age >= 100
# end
# p ages

# Problem 4

# Problem 5
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# # Find the index of the first name that starts with Be
# puts flintstones.find_index {|name| name.start_with?('Be')}

# # Problem 6
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# # Amend array so that all the names only have three chars
# flintstones.map {|name| name[0,3]}

# Problem 7
# statement = "The Flintstones Rock"
# Create a hash that expresses the frequency with which each letter occurs in this string
# REVIEW ANSWER AND FIND OTHER WAYS TO SOLVE

# Problem 8

# Problem 9
# words = "the flintstones rock"
# words.split.map { |word| word.capitalize!}.join(' ')

# Problem 10
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# # age_range = Hash.new
# munsters.each_pair do |name, demo|
#   if demo['age'] <= 17
#     munsters[name].merge!(age_group: 'kid')
#   elsif demo['age'] >= 18 || demo.has_value? <= 64
#     munsters[name].merge!(age_group: 'adult')
#   else
#     munsters[name].merge!(age_group: 'senior')
#   end 
# end 