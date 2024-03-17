# frozen_string_literal: true

# Part 1

def sum(arr)
  return arr.inject(0){|sum,x| sum + x }
  0
end

def max_2_sum(arr)
  #sort and reverse array
  asort = arr.sort
  areverse = asort.reverse
  
  #return the sum of the 2 max elements
    if(areverse.length >= 2)
      return (areverse[0] + areverse[1])
    end
    
    if(areverse.length == 1)
      return areverse[0];
    end
    
    0
end

def sum_to_n?(arr, number)
  #length of array
  n = arr.length
  
  #traverese array and find sum 
  #of each set of 2 munbers
  (arr[0..(n-2)]).each do |i|
    (arr[(arr.index(i)+1)..(n-1)]).each do |j|
      sum = i + j 
      if(sum == number)
        return true
      end 
    end
  end
return false
0
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(string)
  #create array of vowels
  arr = ["A", "E", "I", "O", "U"]
  
  #error out if string contains non alphabet
  if(!/[a-zA-Z]/.match(string.chars.first))
    return false
  
  #error when string is empty
  elsif (string == '')
    return false

  #find if the first element is vowel or consonent
  elsif(arr.include?(string.chars.first.upcase))
    return false
  else
    return true
  end
0
end

def binary_multiple_of_4?(string)
  #return true if we get 0
  if (string == '0')
    return true
  end 
  
  #convert string to decimal number
  #return true if divisible by 4
  #string.to_i(2) returns 0 if non integers are there
  if (string.to_i(2).remainder(4) == 0 and string.to_i(2) != 0)
    return true
  else 
    return false
  end

end
# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price

    #getter method for isbn
    def isbn
      @isbn
    end

    #getter method for price
    def price
      @price
    end

    #setter method for isbn
    def isbn=(isbn)
      @isbn = isbn
    end

    #setter method for price
    def price=(price)
      @price = price
    end

    if (@isbn.empty?)
      raise ArgumentError.new("ISBN number cannot be an empty string")
    end 

    if( @price <= 0)
      raise ArgumentError.new("Price cannot be less than or equal to zero")
    end
  end

  def price_as_string
      @price = format("$%.2f", @price) #"$#{price}"
    
  end
end
