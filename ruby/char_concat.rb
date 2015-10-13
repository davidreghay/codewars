def char_concat(word)
  cat = ''
  for i in 0..(word.length / 2 - 1) do
    cat << word[i] << word[-i - 1] << "#{i + 1}"
  end
  cat
end
