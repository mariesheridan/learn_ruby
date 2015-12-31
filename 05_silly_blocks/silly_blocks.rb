def reverser(&proc)
    phrase = proc.call
    words = phrase.split(" ")
    answer = []
    words.each do |word|
        answer.push(word.reverse)
    end
    answer.join(" ")
end

def adder (add = 1, &proc)
    num = proc.call
    num + add
end

def repeater (repeat = 1, &proc)
    repeat.times do
        proc.call
    end
end