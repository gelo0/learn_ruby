#write your code here
def add(num1,num2)
  return num1 + num2
end
def subtract(num1,num2)
  return num1 - num2
end
def sum(array)
  sum = 0
  array.each do |number|
    sum = sum + number
  end
  return sum
end
def multiply(array)
  sum = 1
  array.each do |number|
    sum = sum * number
  end
  return sum
end
def power(num1,num2)
  return (num1 ** num2)
end
def factorial(number)
  total = 1
  while number > 1
    total = total * number
    number = number - 1
  end
  return total
end
