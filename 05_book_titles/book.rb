class Book
# write your code here
  attr_accessor :title


  def title
    exceptions = ['and', 'in', 'of', 'the', 'a', 'an']
    final = []
    title_a =
    @title.split(' ').each do |word|
      if exceptions.include? word
        final.push(word)
      else
        final.push(word.capitalize)
      end
    end
    final[0] = final[0].capitalize
    return final.join(' ')
  end
end
