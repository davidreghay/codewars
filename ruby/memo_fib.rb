def fibonacci(*n)
  n, fib = *n
  fib ||= [0, 1]
  return fib[n] if fib.size > n
  s = fib.size
  fib.push(fib[s-1] + fib[s-2])
  fibonacci(n, fib)
end
