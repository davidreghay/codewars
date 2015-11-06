def arr2bin(arr)
  return false if arr.reject {|el| el.is_a?(Numeric) }.length > 0
  return '0' if arr == []
  arr.inject {|sum, n| sum += n} .to_s(2)
end