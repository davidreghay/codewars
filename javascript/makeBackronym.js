//preload variable: dict

var makeBackronym = function(string){
  return string.toUpperCase().split('').map(function(item) { return dict[item] }).join(' ');
};