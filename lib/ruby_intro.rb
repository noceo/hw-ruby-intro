# Part 1

def sum arr
  arr.inject(0) { |sum, num| sum + num }
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    max_values = arr.max(2)
    return max_values[0] + max_values[1]
  end
end

def sum_to_n? arr, n
  sorted_arr = arr.sort
  start_pointer = 0
  end_pointer = arr.length - 1

  if arr.empty?
    return false
  end

  while start_pointer != end_pointer
    if sorted_arr[start_pointer] + sorted_arr[end_pointer] > n
      end_pointer -= 1
    elsif sorted_arr[start_pointer] + sorted_arr[end_pointer] < n
      start_pointer += 1
    else
      return true
    end
  end

  return false
end

# Part 2

def hello(name)
  'Hello, ' + name
end

def starts_with_consonant? s
  s =~ /^[^aeiou\W]/i
end

def binary_multiple_of_4? s
  s =~ /^([01]*(00)|0)$/
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == '' || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  attr_accessor :isbn
	attr_accessor :price

	def price_as_string
		"$#{'%.2f' % @price}"
	end
end
