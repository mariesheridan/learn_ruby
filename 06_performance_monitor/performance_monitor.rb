require "time"

def measure(repeat = 1, &proc)
    answer = 0
    repeat.times do
        before = Time.now.to_i
        proc.call
        after = Time.now.to_i
        answer =  answer + (after - before)
    end
    answer.to_f / repeat
end