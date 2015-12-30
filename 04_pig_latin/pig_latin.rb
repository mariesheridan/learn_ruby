def translate(phrase)
    answer = []
    words = phrase.split(" ")
    words.each do |word|
        capitalized = false
        if (/^[A-Z]/.match(word)) != nil
            capitalized = true
        end
        parts = word.partition(/(?i)^(qu|[bcdfghjklmnpqrstvwxyz])*/)
        if parts[0] == ""
            newWord = parts[2] + parts[1] + "ay"
            if capitalized == true
                newWord.capitalize!
            end
            answer.push(newWord)
        else
            answer.push(word + "ay")
        end
    end
    answer.join(" ")
end