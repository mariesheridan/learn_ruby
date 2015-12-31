class Temperature

    class << self
        def from_celsius(celsius)
            new({c: celsius})
        end
        def from_fahrenheit(fahrenheit)
            new({f: fahrenheit})
        end
    end

    def initialize(hash)
        if (hash[:f] != nil)
            @f = hash[:f]
            @c = ftoc(@f)
        elsif (hash[:c] != nil)
            @c = hash[:c]
            @f = ctof(@c)
        end
    end

    def in_celsius
        @c
    end

    def in_fahrenheit
        @f
    end

    def ftoc(fahrenheit)
        5.0/9.0 * (fahrenheit.to_f - 32.0)
    end

    def ctof(celsius)
        (9.0/5.0 * celsius.to_f) + 32.0
    end
end

class Celsius < Temperature

    def initialize(celsius)
        super({c: celsius})
    end
end

class Fahrenheit < Temperature

    def initialize(fahrenheit)
        super({f: fahrenheit})
    end
end