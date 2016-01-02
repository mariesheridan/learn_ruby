Integer.class_eval do

    def in_words
        level = 0
        number = self
        proceed = true
        output = ""
        if number == 0
            return get_ones(number)
        end
        while proceed do
            block = number % 1000
            number = number / 1000
            output.prepend(translate(block, level))
            level = level + 1
            if (number == 0)
                proceed = false
            end
        end
        #puts "#{self.to_s}.in_words = #{output.strip}"
        return output.strip
    end
    
    def translate(block, level)
        word = ""
        hundreds = block / 100
        tens = (block % 100) / 10
        ones = block % 10
        word = word + evaluate_hundreds(hundreds)
        word = word + evaluate_tens_ones(tens, ones)
        word = word + get_block_ender(block, level)
        return word
    end
    
    def evaluate_hundreds(number)
        result = ""
        if number != 0
            result = " #{get_ones(number)} hundred"
        end
        return result
    end
    
    def evaluate_tens_ones(tens, ones)
        result = ""
        if (tens == 1)
            result = " #{get_teens(ones)}"
        else
            if (tens > 0)
                result = " #{get_tens(tens)}"
            end
            if (ones > 0)
                result = result + " #{get_ones(ones)}"
            end
        end
        return result
    end
    
    def get_ones(number)
        words = ["zero",
                 "one",
                 "two",
                 "three",
                 "four",
                 "five",
                 "six",
                 "seven",
                 "eight",
                 "nine"]
        return words[number]
    end
    
    def get_tens(number)
        words = ["",
                 "ten",
                 "twenty",
                 "thirty",
                 "forty",
                 "fifty",
                 "sixty",
                 "seventy",
                 "eighty",
                 "ninety"]
        return words[number]
    end

    def get_teens(number)
        words = ["ten",
                 "eleven",
                 "twelve",
                 "thirteen",
                 "fourteen",
                 "fifteen",
                 "sixteen",
                 "seventeen",
                 "eighteen",
                 "nineteen"]
        return words[number]
    end

    def get_block_ender(block, level)
        word = ""
        words = ["",
                 " thousand",
                 " million",
                 " billion",
                 " trillion"]
        if (block > 0)
            word = words[level]
        end
        return word
    end
end