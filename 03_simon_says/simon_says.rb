def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, repetition = 2)
    answer = word
    for i in 1...repetition
        answer = answer + " " + word
    end
    answer
end

def start_of_word(word, num)
    word[0, num]
end

def first_word(phrase)
    words = phrase.split(" ")
    words[0]
end

def titleize(title)
    # Rule from http://www.grammarcheck.net/capitalization-in-titles-101/
    smallOnly = ["a", "an", "the", "and", "as", "as if", "as long as", "at", "but", "buy", "even if", "for", "from", "if", "if only", "in", "into", "like", "near", "now that", "nor", "of", "off", "on", "on top of", "once", "onto", "or", "out of", "over", "past", "so", "so that", "than", "that", "till", "to", "up", "upon", "with", "when", "yet"]
    titleWords = title.split(" ")
    titleWords[0].capitalize!
    for i in 1..(titleWords.length - 2)
        if (smallOnly.include?(titleWords[i]) == false)
            titleWords[i].capitalize!
        end
    end
    titleWords[titleWords.length - 1].capitalize!
    titleWords.join(" ")
end