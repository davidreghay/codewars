var createIterator = function (func, n) {
  return function(input) {
    for(var i = 0; i < n; i++) {
      input = func(input);
    }
    return input;
  }
};