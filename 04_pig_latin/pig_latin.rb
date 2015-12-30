def translate(phrase)
    answer = []
    words = phrase.split(" ")
    words.each do |word|
        parts = word.partition(/^(qu|[bcdfghjklmnpqrstvwxyz])*/)
        parts
        if parts[0] == ""
            answer.push(parts[2] + parts[1] + "ay")
        else
            answer.push(word + "ay")
        end
    end
    answer.join(" ")
end