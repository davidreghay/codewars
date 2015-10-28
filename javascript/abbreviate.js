function abbreviate(string) {
  var match = string.match(/\w{4,}/gi);
  if(match !== null) match.forEach(function(matcher) { 
    string = string.replace(matcher.slice(1, matcher.length - 1), matcher.substr(1, matcher.length - 2).length) 
  });
  return string;
}