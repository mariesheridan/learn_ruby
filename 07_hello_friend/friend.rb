class Friend
    def greeting(name = nil)
        greet = "Hello"
        if name != nil
            greet = greet + ", #{name}"
        end
        greet = greet + "!"
    end
end