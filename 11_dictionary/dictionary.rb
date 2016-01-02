class Dictionary
    attr_accessor :entries
    def initialize
        @entries = {}
        @entries.default = nil
    end

    def add(entry)
        if entry.is_a?(String)
            hash = {entry => nil}
        else
            hash = entry
        end
        @entries.merge!(hash)
    end

    def keywords
        @entries.keys.sort
    end

    def include?(key)
        @entries.include?(key)
    end

    def find(this_key)
        hash = {}
        @entries.each do |key, value|
            if key.match(/^#{this_key}*/) != nil
                hash[key] = value
            end
        end
        hash
    end
    
    def empty?(hash)
        hash.empty?
    end
    
    def printable
        output = ""
        keys = keywords
        keys.each do |key|
            output = output + %Q([#{key}] "#{@entries[key]}"\n)
        end
        output.strip
    end
end