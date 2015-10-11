def spinWords(string)
  string.split.map { |e| e.length < 5 ? e : e.reverse } .join ' '
end
