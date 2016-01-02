Array.class_eval do
    def sum
        result = 0
        each do |num|
            result = result + num
        end
        return result
    end
    
    def square
        result = []
        each do |num|
            result.push(num * num)
        end
        return result
    end

    def square!
        result = []
        each do |num|
            result.push(num * num)
        end
        replace(result)
    end
end