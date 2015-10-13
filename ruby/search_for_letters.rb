def change(a)
  result = ""
  for i in 'a'..'z' do
    result += a.downcase.include?(i) ? '1' : '0';
  end
  result
end
