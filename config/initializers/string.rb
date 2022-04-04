class String

    def puncs
        puncs = ["and", "the", "to", "of", "by", "from", "or"]
        array = self.split(" ")
        array.map! do |x| 
            if puncs.include? x.downcase
                x.downcase
            else
                x
            end
        end
        return array.join(" ")
    end

end