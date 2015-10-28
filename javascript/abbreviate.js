function abbreviate(string) {
  var words =  string.split(/[^A-Za-z]+/).map(function(el) {
		if(el.length <= 3) return el;
  	return el.replace(el.substr(1, el.length - 2), el.substr(1, el.length - 2).length.toString());
  });
  var joiners = string.split(/[A-Za-z]+/);
  var result = "";
  for(var i = 0; i < words.length; i++) {
  	result += words[i] + joiners[i + 1];
  }
  return result;
}