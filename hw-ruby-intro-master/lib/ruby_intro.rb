# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  @sumn = 0
  unless arr.nil?
  arr.each {|a| @sumn = @sumn + a}
  #iterates through arr and adds up all the elements to the sumn variable
  return @sumn
  end
  return @sumn
end

def max_2_sum(arr)
  # YOUR CODE HERE
  @ar_sum = 0
  unless arr.nil? || arr.empty?
  @ar_sum = arr.max(2).reduce(:+)
  #arr.max(2) takes the 2 largest numbers in the array and .reduce adds them together
  return @ar_sum
  end
  return @ar_sum
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  unless arr.nil? || arr.empty?
  return !!arr.combination(2).detect {|x, y| x +y == n}
  #used the !! to avoid getting nil as a return value
  #arr.combination(x) takes the combination of x values
  #.detect looks to see if any x,y pair equals n
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  out = "Hello, #{name}"
  return out
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  s = s.downcase
  return !!(s =~ (/^[B,C,D,F,G,H,J,K,L,M,N,P,Q,R,S,T,V,W,X,Y,Z]/i))
  #used regex to match the first letter of the string to a consonant
  #used a double negation before return to make sure of true or false output
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if s == 0
    return true
  end
  if /^[01]*[00]$/.match(s)
    #the ^[01]* looks through the entire string for only 1's and 0's
    #[00]$ looks for a 00 at the end of the string which signifies the number is divisible by 4
    #.match(s) takes the described parameters between / / and returns a value of true or false
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn
attr_accessor :price
#defines 2 accessors isbn and price

#initializes bookinstock to 2 variables
def initialize (isbn, price)
  self.isbn = isbn
  self.price = price
end

#allows user to change isbn raising an error if string is empty
def isbn= (isbn)
    if isbn == ''
      raise ArgumentError.new("Please enter the books ISBN")
    end
    @isbn = isbn
end

#allows user to change price, converting it to float
#raises an error if price is less than or equal to zero
def price= (price)
    price = price.to_f
    if price <= 0
      raise ArgumentError.new("Please enter a price above Zero")
    end
    @price = price
end

#returns the price as a string
#"$%.2f" is the format of the float that @price represents
def price_as_string
  return "$%.2f" % @price
end
end
