def caffeineBuzz(n)
  return 'mocha_missing!' unless n % 3 == 0
  return 'CoffeeScript' if n % 4 == 0
  return n % 2 == 0 ? 'JavaScript' : 'Java'
end
