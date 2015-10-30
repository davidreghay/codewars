 function groupCheck(s){
   var stack = [];
   for(var i = 0; i < s.length; i++) {
     var ch = s.charAt(i);
     if(ch.search(/[\[\{\(]/) === 0) {
       stack.push(ch);
     }
     if(ch === ']') {
       if(stack.pop() !== '[') return false;
     }
     if(ch === '}') {
       if(stack.pop() !== '{') return false;
     }
     if(ch === ')') {
       if(stack.pop() !== '(') return false;
     }
   }
   return stack.length === 0;
 }