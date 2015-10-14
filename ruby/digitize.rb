def digitize(n)
  n.to_s.split("").map { |e| e.to_i }
end
