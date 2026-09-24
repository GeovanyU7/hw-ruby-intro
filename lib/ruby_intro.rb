# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  s.match?(/\A[b-df-hj-np-tv-z]/i)
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  s.match?(/\A[01]+\z/) && (s.to_i(2) % 4).zero?
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
 
  def initialize(isbn, price)
    raise ArgumentError, 'ISBN cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price must be greater than zero' if price <= 0
    @isbn = isbn
    @price = price
  end
 
  def price_as_string
    "$#{'%.2f' % price}"
  end
end
