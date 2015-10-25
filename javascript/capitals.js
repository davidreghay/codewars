var capitals = function (word) {
  var result = [];
  word.split('').forEach(function(current, index) {
    if(current.charCodeAt() >= 65 && current.charCodeAt() <= 90) result.push(index);
  });
  return result;
};