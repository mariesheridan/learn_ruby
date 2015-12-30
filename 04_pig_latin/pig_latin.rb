def translate(phrase)
    answer = []
    words = phrase.split(" ")
    words.each do |word|
        capitalized = false
        if (/^[A-Z]/.match(word)) != nil
            capitalized = true
        end
        withPunctuation = word.partition(/(?i)('s|[^a-z0-9])*$/)
        parts = withPunctuation[0].partition(/(?i)^(qu|[bcdfghjklmnpqrstvwxyz])*/)
        if parts[0] == ""
            newWord = parts[2] + parts[1] + "ay"
            if capitalized == true
                newWord.capitalize!
            end
        else
            newWord = withPunctuation[0] + "ay"
        end
        answer.push(newWord + withPunctuation[1])
    end
    answer.join(" ")
end