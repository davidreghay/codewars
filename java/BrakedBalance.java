import java.util.Stack;
import java.util.EmptyStackException;

public class BrakedBalance {

   public static boolean isStringBalanced(String string){
     Stack<Character> stack = new Stack<Character>();
     char popped;
     
     for(int i = 0; i < string.length(); i++) {
       if(string.charAt(i) == '(') {
         stack.push('(');
       } else if(string.charAt(i) == ')') {
         try {
           stack.pop();
         } catch(EmptyStackException e) {
           return false;
         }
       }
     }
     return stack.isEmpty();
   }
}