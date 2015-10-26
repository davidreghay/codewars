def digital_root(n)
  return n if n < 10;
  return digital_root(n % 10 + n / 10);
end