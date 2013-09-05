# Ruby Exercises

# 1
# Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
# and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 
arr.each do |element|
  puts element
end


# OR

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# arr.each { |element| puts element}


# OR

# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each { |element| puts element }


# 2
# Same as above, but only print out values greater than 5.

arr.each do |element|
  if element > 5
    puts element
  end
end

# OR

arr.each { |a| puts a if a > 5}


#3
# Now, using the same array from #2, use the "select" method to extract all odd numbers
# into the new array.

arr.select{|a| (a % 2) != 0}

# OR

arr.select{ |a| a.odd? }


#4
# Append "11" to the end of the array. Prepend "0" to the beginning.

arr << 11

arr.unshift(0)


#5
# Get rid of "11". And append a "3".

arr.pop

arr << 3


#6
# Get rid of duplicates without specifically removing any one value.

arr.uniq

# OR

arr.uniq!


#7
# What is the major difference between an Array and a Hash?

# Hashes are marked by curly braces {} and contain key value pairs and keys don't repeat,
# while arrays are marked by square brackets [] and order is important.


#8
# Create a hash using both Ruby 1.8 and 1.9 syntax.

# 1.8
{:name => 'sam'}

# 1.9
{name: 'sam'}


# Suppose you have a h = {a:1, b:2, c:3, d:4}

#9
# Get the value of key "b".

h[:b]


#10
# Add to this hash the key:value pair {e:5}

h[:e] = 5


#11
# Remove all key:value pairs whose value is less than 3.5

h.delete_if{ |key, value| value < 3.5 }


#12
# Can hash values be arrays? (give examples)
# Yes
{a:[1, 2, 3, 4], b:[5, 6, 7], c:8}

# Can you have an array of hashes?
# Yes
a = [{a:1, b:2}, {c:3, d:4, e:5}]


#13
# Look at several Rails/Ruby online API sources and say which one you like best and why.
#Ruby-doc.org - easy to use, simple design
#api.rubyonrails.org
#apidock.com - too busy
#ruby-toolbox.com - not intuitive