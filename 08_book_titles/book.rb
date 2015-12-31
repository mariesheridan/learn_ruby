class Book
    attr_accessor :title
    def title=(name)
        @title = titleize(name)
    end

private
    def titleize(title)
        # Rule from http://www.grammarcheck.net/capitalization-in-titles-101/
        smallOnly = ["a", "an", "the", "and", "as", "as if", "as long as", "at", "but", "buy", 
                     "even if", "for", "from", "if", "if only", "in", "into", "like", "near", 
                     "now that", "nor", "of", "off", "on", "on top of", "once", "onto", "or", 
                     "out of", "over", "past", "so", "so that", "than", "that", "till", "to", 
                     "up", "upon", "with", "yet"]
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
end