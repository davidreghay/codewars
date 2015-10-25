function listToArray(list) {
  var array = [];
  while(list !== null) {
    array.push(list.value);
    list = list.next;
  }
  return array;
}