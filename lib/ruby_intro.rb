# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
if arr.length == 0
    return 0
end

for i in 0..arr.length-1
  sum_of_all += arr[i]
end
  return sum_of_all
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end

  if arr.length ==1
    return arr.first
  end

  arr.sort!
  sum_of_2 = arr[arr.length-1] + arr[arr.length-2]
  return sum_of_2

end

def sum_to_n? arr, n
  # YOUR CODE HERE
    if arr.length == 0 || arr.length == 1
      return false
    end
  

    i = 0
    while i < arr.length
      j = i + 1
      while j < arr.length
        if arr[i] + arr[j] == n
          return true
        end
      j += 1
      end
    i += 1
    end

  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s == ''
    return false

  elsif s.slice(0) == /[aeiouAEIOU]/
    return false

  elsif s.slice(0) != /[[:alpha:]]/
    return false

  elsif s.slice(0) == /[[:alpha:]]/ && s.slice(0) != /[aeiouAEIOU]/
    return true

  else
    return false
  end

end

def binary_multiple_of_4? s
  # YOUR CODE HERE

  if s.length == 0
    return false
  end

  if (s =~ /[01]/) == nil
    return false
  end

  for i in s.length-1..0
      if(s[i] == 1)
        decimal += 2**(i)
      end
  end

  if (decimal % 4) == 0
    return true
  end

  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
    attr_accessor :isbn
    attr_accessor :price
    def initialize(isbn, price)
      if isbn.length == 0 || price <= 0
          raise ArgumentError
      end

      self.isbn = isbn
      self.price = price
    end
    
    def price_as_string
      puts '$%.2f' % price.to_d.truncate(2)
    end
    
end