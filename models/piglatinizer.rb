require 'pry'
class PigLatinizer 
 VOYELS  = ['e','a','o','i','u']
 

  def piglatinize (word)
  end
   splited = word.split(" ") 
  # result = ""
    result = splited.map do |word|
    
      @willing = nil
     @want = word.split("").each do |letter| 
         letter 
      end
      @save_me = @want
      voyel = @want.detect {|el| el if VOYELS.include?(el)} 

       (0...@want.index(voyel)).each do |i|
        shifted = @want.shift 
        @want << shifted
       end  
       if VOYELS.include?(@want.last)
        @want << "way"
        else 
        @want << "ay"
       end
        word = @want.join("")
        
     end


  result.join(" ") 
  

  end
  
end
