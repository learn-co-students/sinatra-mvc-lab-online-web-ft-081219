class PigLatinizer

    def piglatinize(word) 
        if /^[aeiou]/i.match(word)
            "#{word}way"
        else 
            parts = word.split(/([aeiou].*)/)
            "#{parts[1]}#{parts[0]}ay"
        end
    end

    def piglatinize_phrase(phrase)
        words = phrase.split(' ')
        words.map {|word| piglatinize(word)}.join(' ')
    end
#end