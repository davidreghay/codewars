def duplicate_encode(word)
  result = ''
  word.downcase.each_char { |ch| (word.downcase.count ch) > 1 ? result += ')' : result += '(' }
  return result
end
