#write your code here
def translate(text)
  words = text.split(' ')
  vowels = ['a', 'e', 'i', 'o', 'u', 'y']
  punctuation = ['.', ',']
  final_text = []
  words.each do |word|
    i=0
    sign = ''
    if punctuation.include? word[-1]
      sign = word[-1].to_s
      word = word[0..-2]
    end
    while i < word.length
      if vowels.include? word[i]
        if i == 0
          final_text.push(word[i..-1] + "ay" + sign)
          break
        else
          if is_capitalized(word)
            if word[i-1..i].downcase == "qu"
              final_text.push((word[i+1..-1] + word [0..i] + "ay" + sign).capitalize)
              break
            else
              final_text.push((word[i..-1] + word [0..i-1] + "ay" + sign).capitalize)
              break
            end
          else
            if word[i-1..i] == "qu"
              final_text.push(word[i+1..-1] + word [0..i] + "ay" + sign)
              break
            else
              final_text.push(word[i..-1] + word [0..i-1] + "ay" + sign)
              break
            end
          end
        end
      else
        i = i + 1
      end
    end
  end
  return final_text.join(' ')
end

def is_capitalized (word)
  if word[0] == word[0].upcase
    return true
  else
    return false
  end
end

def is_punctuation(word)

end
