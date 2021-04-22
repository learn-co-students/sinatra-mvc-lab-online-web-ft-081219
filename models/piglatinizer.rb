class PigLatinizer
    attr_accessor :text

    def piglatinize(text)
        @text=text
        split_string_no_punct = @text.split(/\W/).reject{|c|c.empty?}
        split_string_yes_punct = @text.split(" ")

        #latinize no_punct words
        latinized_words = split_string_yes_punct.map do |w|
            #if does not start with vowel
            if w.start_with?(/[^aeiou]/i)
                arr=w.partition(/[aeiou]/i)
                arr[1]+arr[2]+arr[0]+"ay"
            else
                w+"way"
            end
        end

        #for each word, if matching index in split_str_yes_punct has punct, copy punct at end
            #switch on .reverse.start_with?(/[^\w\s]/)
        return_arr=[]
        latinized_words.each_with_index do |w,index|
            if split_string_yes_punct[index].reverse.start_with?(/[^\w\s]/)
                w_punct = w + split_string_yes_punct[index].scan(/[^\w\s]/).join
            else
                return_arr.push(w)
            end
        end
        
        return_arr.join(" ")
        #return string
    end

end