class Find
  def self.shortest_completing_word(random_string, dictionary)
    random_string.gsub!(/[^a-zA-Z]/,"")
    shortest_word = []
    dictionary.map do |word|
      if word.include?(random_string) &&
        (shortest_word.empty? || shortest_word.first.length > word.length)
        shortest_word << word
        if shortest_word.length.eql? 2
          shortest_word.shift
        end
      end
    end
    print shortest_word.first
  end
end

random_string = "25t 7em"
dictionary = ["tempature", "tempted", "tempt", "lemon", "bop"]

Find.shortest_completing_word(random_string, dictionary)
