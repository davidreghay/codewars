require 'prime'
def primeFactors(n)
  Prime.prime_division(n).map { |e| '(' + e.join('**')+ ')' }.join.gsub(/\*\*1/, '')
end
