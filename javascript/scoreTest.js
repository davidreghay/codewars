//returns the test score
function scoreTest(str, right, omit, wrong){
  for(var i = 0, sum = 0; i < str.length; i++) {
    switch(str[i]) {
      case 0:
        sum += right;
        break;
      case 1:
        sum += omit;
        break;
      case 2:
        sum -= wrong;
        break;
    }
  }
  return sum;
}