function digital_root(n) {
  if(n < 10) return n;
  return digital_root(n % 10 + Math.floor(n / 10));
}