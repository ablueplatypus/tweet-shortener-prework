def dictionary
 word_list = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
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

  def bulk_tweet_shortener(array_of_tweets)
    array_of_tweets.each do |tweets|
    puts word_substituter(tweets)
    end
  end

  def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      return tweet
    end
  end

  def shortened_tweet_truncator(tweet)
    if selective_tweet_shortener(tweet).length > 140
      shortened_tweet = tweet[0..136] + "..."
    else
      tweet
    end
  end
