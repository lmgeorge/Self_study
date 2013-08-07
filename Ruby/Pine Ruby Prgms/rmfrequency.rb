word =  ["the", "love"]
sentence = ["Ruby is the best language in the world", "I Love Ruby!"]

sentence.map! { |s|  s.split ' '}
print sentence