#write your code here
def echo(text)
  return text
end

def shout(text)
  return text.upcase
end

def repeat(text, times=2)
  return [text] * times * " "
end

def start_of_word(word, number=1)
  return word[0..number-1]
end

def first_word(text)
  #i = 0
  #while text[i] != " "
    #i = i + 1
  #end
  #return text[0..i-1]
  word = text.split(' ')
  return word[0]
end

def titleize(text)
  word = text.split(' ')
  little_words = ['and', 'the', 'over']
  title = []
  word.each do |single|
    if little_words.include? single
      title.push(single)
    else
      title.push(single.capitalize)
    end

    #return single
  end
  title[0] = title[0].capitalize
  return title.join(' ')
end
