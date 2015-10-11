def all_squared_pairs(num)
  result = []
  for i in 0..Math.sqrt(num).to_i do
    other_square = Math.sqrt(num - i ** 2).to_i
    result << [other_square, i] if i ** 2 + other_square ** 2 == num 
  end
  result[0..result.length / 2 - 1]
end
