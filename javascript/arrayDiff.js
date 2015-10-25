function array_diff(a, b) {
  return a.filter(function(val) {
    return b.indexOf(val) === -1;
  });
}