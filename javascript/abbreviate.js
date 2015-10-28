function abbreviate(string) {
  return string.replace(/\w{4,}/gi, function(match) {
    return match.replace(match.slice(1, match.length - 1), match.length - 2);
  });
}