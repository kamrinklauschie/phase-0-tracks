#An array of integers 
search_array = [1, 2, 3, 4, 5, 6, 7, 8]

#return the index of the item 
def simple_search (search_array, search_number)
  counter = 0
  search_array.each do |number|
  if number == search_number 
   return counter 
 else 
   counter +=1 
  end 
end
  nil 
end

#return nil if the integer is not present 

simple_search(search_array, 4)





#creates a number of Fibonacci terms 

#for every number add 1 (+1), then add the previous number (index)

def fibonacci_creator(number)
fib_arr = [0,1]
index = 2
while index < number 
fib_num = fib_arr[-1] + fib_arr[-2]
fib_arr << fib_num
  index +=1 
end
fib_arr[-1]
end 

#var = fib_arr(100)
#num = var[-1]

fibonacci_creator(100)

#returns on array of terms 

# test 
#fib(100)218922995834555169026

# set swap counter to a non-zero value 
# repeat until the swap counter is 0 
# reset swap counter to 0 
# look at each adjacent pair 
#if two adjacent elements are not in order, swap them
#add one to the swap counter 
  
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        temp = array[i]
        array[i] = array[i+1]
        array[i+1] = temp
        swapped = true
      end
    end

    break if not swapped
  end

  return array
end

array = [6, 4, 3, 9, 2, 7, 5, 8]
puts bubble_sort(array)