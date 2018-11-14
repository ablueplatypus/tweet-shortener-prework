def dictionary
 words_to_be_subsituded = {
   :hello => "hi",
   :to => "2",
   :two => "2",
   :too => "2",
   :for => "4",
   :four => "4",
   :be => "b",
   :you => "u",
   :at => "@",
   :and => "&"
 }
 end

def word_substituter(string_tweet)
  tweet_arr = string_tweet.split(" ")
  new_arr = []
    tweet_arr.each do |word|
      if dictionary.keys.include?(word.downcase)
        new_arr << dictionary[word.downcase]
      else
        new_arr << word
      end
    end
    new_arr.join(" ")
  end




  
