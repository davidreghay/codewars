function calculateHypotenuse(a,b){
  if(typeof a !== 'number' || typeof b !== 'number' ||
      isNaN(a) || isNaN(b)) {
    throw Error("invalid input: non-number detected");
  }
  if(a <= 0 || b <= 0) throw Error("invalid input: both lengths must be greater than zero");
  return Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2)).toFixed(3);
}