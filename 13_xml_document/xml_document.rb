class XmlDocument

    def initialize(indent = false)
        if indent
            @spacer = "  "
            @newline = "\n"
        else
            @spacer = ""
            @newline = ""
        end
        @xml = ""
        @level = 0
    end

    def send(name, attribute = {}, &method)
        @level = @level + 1
        attr = ""
        attribute.each do |key, value|
            attr = attr + " #{key}='#{value}'"
        end
        level_now = @level
        if method == nil
            @xml = put_spacer(level_now) + empty_tag(name + attr) + @newline
        else
            @xml = put_spacer(level_now) + open_tag(name + attr) + @newline +
                   method.call +
                   put_spacer(level_now) + close_tag(name) + @newline
        end
        return @xml
    end

    def hello(attribute = {}, &method)
        name = "hello"
        send(name, attribute, &method)
    end

    def goodbye(attribute = {}, &method)
        name = "goodbye"
        send(name, attribute, &method)
    end

    def come_back(attribute = {}, &method)
        name = "come_back"
        send(name, attribute, &method)
    end

    def ok_fine(attribute = {}, &method)
        name = "ok_fine"
        send(name, attribute, &method)
    end

    private

    def empty_tag(tag_name)
        return "<#{tag_name}/>"
    end

    def open_tag(tag_name)
        return "<#{tag_name}>"
    end

    def close_tag(tag_name)
        return "</#{tag_name}>"
    end
    
    def put_spacer(level)
        space = ""
        level = level - 1
        level.times do
            space = space + @spacer
        end
        return space
    end
end