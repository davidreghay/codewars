def service(score)
  score1, score2 = score.split(':').map { |e| e.to_i }
  return ((score1 + score2) / 5).even? ? 'first' : 'second' if score1 < 20 or score2 < 20
  return ((score1 + score2) / 2).even? ? 'first' : 'second'
end
