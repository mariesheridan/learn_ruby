class Timer
    attr_accessor :seconds
    def initialize
        @hour = 0
        @mins = 0
        @secs = 0
        @seconds = 0
    end

    def time_string
        @secs = @seconds % 60
        @mins = (@seconds / 60) % 60
        @hour = (@seconds / 60) / 60
        time = [padded(@hour), padded(@mins), padded(@secs)]
        time.join(":")
    end
    
    def padded(num)
        result = num.to_s
        if num < 10
            result.prepend("0")
        end
        result
    end
end