# Learning Goals
# Be able to determine the time and space complexity of a method
# Execution Time Difference
# Be able to compare the time complexity of one method to another
# Be able to recognize when time or space complexity can be improved
# my_min
# Given a list of integers find the smallest number in the list.
# Example:

#     list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#     my_min(list)  # =>  -5

# Phase I
# First, write a function that compares each element to every other element of the list. Return the element if all other elements in the array are larger.
# What is the time complexity for this function?

def my_slow_min(arr)
  min = arr.first

  (1...arr.length - 1).each do |i|
    (i+1...arr.length).each do |j|
      min = arr[i] if min > arr[i]
      min = arr[j] if min > arr[j]
    end
  end
end

# Phase II
# Now rewrite the function to iterate through the list just once while keeping track of the minimum. What is the time complexity?

def my_min(arr)
  min = arr[0]

  (1...arr.length).each do |i|
    min = arr[i] if arr[i] < min
  end

  min
end

# Largest Contiguous Sub-sum
# You have an array of integers and you want to find the largest contiguous (together in sequence) sub-sum. Find the sums of all contiguous sub-arrays and return the max.

# Example:

#     list = [5, 3, -7]
#     largest_contiguous_subsum(list) # => 8

#     # possible sub-sums
#     [5]           # => 5
#     [5, 3]        # => 8 --> we want this one
#     [5, 3, -7]    # => 1
#     [3]           # => 3
#     [3, -7]       # => -4
#     [-7]          # => -7
# Example 2:

#     list = [2, 3, -6, 7, -6, 7]
#     largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# Example 3:

#     list = [-5, -1, -3]
#     largest_contiguous_subsum(list) # => -1 (from [-1])
# Phase I
# Write a function that iterates through the array and finds all sub-arrays using nested loops. First make an array to hold all sub-arrays. Then find the sums of each sub-array and return the max.

def largest_contiguous_subsum(arr)
  subs = []

  (0...arr.length).each do |i|
    (i...arr.length).each do |j|
      subs << arr[i..j]
    end
  end

  max = []

  subs.each do |sub|
    max = sub if max.sum < sub.sum  
  end

  return max
end

 list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# Discuss the time complexity of this solution.

# Phase II
# Let's make a better version. Write a new function using O(n) time with O(1) memory. Keep a running tally of the largest sum. To accomplish this efficient space complexity, consider using two variables. One variable should track the largest sum so far and another to track the current sum. We'll leave the rest to you.

#0(1) memory - solve mathematically, don't store anything

def largest_contiguous_subsum(arr)
  max = arr[0]
  current = arr[0]

  (1...arr.length).each do |i|
    current += arr[i]
    current = [current, arr[i]].max
    max = [max, current].max
  end
  max
end

 list = [-5, -3, -1]
p largest_contiguous_subsum(list)


# Get your story straight, and then explain your solution's time complexity to your TA.