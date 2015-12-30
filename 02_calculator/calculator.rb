def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(numbers)
    answer = 0
    numbers.each do |number|
        answer = answer + number
    end
    answer
end

def multiply(numbers)
    answer = 1
    numbers.each do |number|
        answer = answer * number
    end
    answer
end

def power(num, pow)
    answer = 1
#    for i in 1..pow
#        answer = answer * num
#    end
    pow.times do
        answer = answer * num
    end
    answer
end

def factorial(num)
    answer = 1
    if num > 0
        num.downto(1) do |i|
            answer = answer * i
        end
    end
    answer
end