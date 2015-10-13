def shades_of_grey(n)
  shades = []
  n = n > 254 ? 254 : n
  for i in 1..n
    shades << ('#' + (i.to_s(16).rjust(2, '0') * 3))
  end
  shades
end
