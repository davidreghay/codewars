def sum_of_n(n)
  if n >= 0
    (0..n).map { |e| (e + e ** 2) / 2 }
  else
    (0..n.abs).map { |e| (-e - e ** 2) / 2 }
  end
end
