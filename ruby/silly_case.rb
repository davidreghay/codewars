def sillycase(silly)
  length = silly.length
  if length.even?
    silly[0...(length/2)].downcase + silly[(length/2),(length-1)].upcase
  else
    silly[0..(length/2)].downcase + silly[(length/2+1),(length-1)].upcase
  end
end
