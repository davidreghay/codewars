function diamond(n){
  if(n % 2 === 0 || n < 0) {
    return null;
  }
  var diam = draw(n);
  n -= 2;
  for(var i = 1; n > 0; i++) {
    diam = drawSpace(i) + draw(n) + diam + drawSpace(i) + draw(n);
    n -= 2;
  }
  return diam;
}

function draw(n) {
  line = '';
  while(n-- > 0) {
    line += '*';
  }
  return line + '\n';
}

function drawSpace(n) {
  var space = '';
  while(n-- > 0) {
    space += ' ';
  }
  return space;
}