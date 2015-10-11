GOOD = [1, 2, 3, 3, 4, 10]
EVIL = [1, 2, 2, 2, 3, 5, 10]
def goodVsEvil(good, evil)
  good = good.split.each_with_index.inject(0) { |sum, (n, i)| sum + (n.to_i * GOOD[i]) }
  evil = evil.split.each_with_index.inject(0) { |sum, (n, i)| sum + (n.to_i * EVIL[i]) }
  return 'Battle Result: No victor on this battle field' if good == evil
  return 'Battle Result: Good triumphs over Evil' if good > evil
  'Battle Result: Evil eradicates all trace of Good'
end
