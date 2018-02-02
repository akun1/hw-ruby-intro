# When done, submit this entire file to the autograder.

#QUESTIONS TO ASK IN CLASS:
#do "returns" really matter/harm/improve anything?

# Part 1

def sum arr
  array.inject(0,:+)
end

#sum [1,2,3,4]
#sum []

def max_2_sum arr
  sum(array.sort.last(2))
end

#max_2_sum []
#max_2_sum [12,42,35,75,3,3]
#max_2_sum [1,1,1,1,1]

def sum_to_n? arr, n
  array.product(array).any? {|couple| sum(couple) == val}
end

#sum_to_n? [1,2,3,4,5,6], 3
#sum_to_n? [1,3,4,5,6], 3
#sum_to_n? [], 3

# Part 2

def hello(name)
  return "Hello, #{name}"
end

#hello "akash"
#hello 2

def starts_with_consonant? s
  return /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

#starts_with_consonant? "aj"
#starts_with_consonant? "bnewn"
#starts_with_consonant? "l"

def binary_multiple_of_4? s
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

#binary_multiple_of_4? "0001"
#binary_multiple_of_4? "010"
#binary_multiple_of_4? "2002"

# Part 3

class BookInStock

  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

end

#myBook = BookInStock.new("978-3-16-148410-0",400)
#myBook = BookInStock.new("9783161484100",400)
#myBook = BookInStock.new("",400)
