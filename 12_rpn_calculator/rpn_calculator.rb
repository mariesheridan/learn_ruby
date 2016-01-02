class RPNCalculator
    attr_reader :value

    def initialize
        @stack = []
        @value = nil
        @methods = {:+ => method(:plus).to_proc, 
                    :- => method(:minus).to_proc, 
                    :* => method(:times).to_proc, 
                    :/ => method(:divide).to_proc}
    end

    def push(value)
        @stack.push(value.to_f)
    end

    def plus
        num1, num2 = pop_values
        @value = num2 + num1
        push(@value)
    end

    def minus
        num1, num2 = pop_values
        @value = num2 - num1
        push(@value)
    end

    def times
        num1, num2 = pop_values
        @value = num2 * num1
        push(@value)
    end

    def divide
        num1, num2 = pop_values
        @value = num2 / num1
        push(@value)
    end

    def tokens(string)
        tokens_array = []
        inputs = string.split(" ")
        inputs.each do |token|
            if token.match(/[+]/)
                tokens_array.push(:+)
            elsif token.match(/[\-]/)
                tokens_array.push(:-)
            elsif token.match(/[*]/)
                tokens_array.push(:*)
            elsif token.match(/[\/]/)
                tokens_array.push(:/)
            else
                tokens_array.push(token.to_f)
            end
        end
        return tokens_array
    end

    def evaluate(string)
        inputs = tokens(string)
        inputs.each do |input|
            if input.is_a?(Numeric)
                push(input)
            else
                @methods[input].call
            end
        end
        @value
    end

    private

    def pop_values
        raise "calculator is empty" if @stack.empty?
        return @stack.pop, @stack.pop
    end

end