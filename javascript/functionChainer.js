function chained(functions) {
  return function(n) {
    for(var i = 0; i < functions.length; i++) {
      n = functions[i](n);
    }
    return n;
  }
}